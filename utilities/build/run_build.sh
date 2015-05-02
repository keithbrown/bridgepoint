#!/bin/bash

# set +v 

#
#  This script runs the nightly build.
#
#  The script requires at least two parameters:
#      
#     BridgePoint_Home_Directory - This is the location of a BridgePoint installation
#     Build_Root - This holds the build server location that is the 
#                   root for the build
#
#  Optional:
#     Branch_Name - This is an optional parameter that allows you to configure
#                   the branch to build
#     upload location - This optional argument, if present, will upload the build to this given location.  example: user@myserver.com:/myfolder
#     package_only - This optional argument, if present and set to "yes" cause the build script to only package and notify
#     clean - This optional argument, it defaults to yes.  If yes, a clean build if performed.
#               
#  Since it is the starting point for the build chain, it must be manually put 
#  into place for the build server to run. The variable BUILD_MOUNT holds the 
#  build server location that is the root for the build.
#  
#  Build Server Requirements:
#  1) run_build.sh, and init_git_repositories.sh must be present in ${BUILD_ROOT}
#  2) git, ant, and jar must be installed on the build server
# 
#  The build is performed under ${Build_Root}.  The resulting update site and 
#  zipfile installers are found under ${Build_Root}/releases
# 

#-------------------------------------------------------------------------------
# Functions
#-------------------------------------------------------------------------------

#
# Distribute the build and notify watchers that a build is complete.
# If there are no errors that we also call the installer build script to 
# allow the installers to be built.
#
function distribute_and_notify {
	echo -e "Entering run_build.sh::distribute_and_notify" 
	MAIL_TEMP="mailtemp"

	# Build email report
	echo -e "From: Nightly Build System <issues@onefact.net>" > ${MAIL_TEMP}
	
	errorlog_not_empty=0
	if [ -s ${ERROR_FILE } ]; then
	  errorlog_not_empty=1
	fi
	if [ $errorlog_not_empty ]; then
	  echo -e "Subject: Error! Nightly build report for ${BUILD_TARGET} [#654]"  >> ${MAIL_TEMP}
	else
	  echo -e "Subject: Nightly build report for ${BUILD_TARGET} [#654]"  >> ${MAIL_TEMP}
	fi
	
	BUILD_ADMIN="build@onefact.net,issues@onefact.net"
	echo -e "To: ${BUILD_ADMIN}" >> ${MAIL_TEMP}
	# A blank line needs to come after the "To" field or lines get lost
	echo -e "" >> ${MAIL_TEMP}
	echo -e "Build report for: ${BUILD_TARGET}" >> ${MAIL_TEMP}
	echo -e "The logs for this build are located at: ${BUILD_DIR} on `hostname`" >> ${MAIL_TEMP}
	echo -e "" >> ${MAIL_TEMP}


	# TODO FIXME: Give the changes
	#echo -e "\nCHANGELOG:" >> ${MAIL_TEMP}
	#echo -e "---------------" >> ${MAIL_TEMP}
	#cat ${DIFF_FILE} >> ${MAIL_TEMP}	  

	SERVER_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
	SCP_CMD="scp youruser@${SERVER_IP}:${RESULT_FOLDER}/*.zip"
	DOWNLOAD_URL="http://support.onefact.net/redmine/releases/"

	if [ [ $errorlog_not_empty ]; then
	  echo -e "ERROR!: The following errors are present in the error log." >> ${MAIL_TEMP}
	  echo -e "----------------------------------------------------------" >> ${MAIL_TEMP}
	  cat ${ERROR_FILE} >> ${MAIL_TEMP}
	  echo -e "----------------------------------------------------------" >> ${MAIL_TEMP}
	  echo -e "" >> ${MAIL_TEMP}
	fi

	scp "${BUILD_LOG}" "${UPLOAD_SPEC}"
	scp "${ERROR_FILE}" "${UPLOAD_SPEC}"
	echo -e "Build log: ${DOWNLOAD_URL}/${BL}"
	echo -e "Error log: ${DOWNLOAD_URL}/${EF}"
	echo -e ""

	echo -e "Downloads:" >> ${MAIL_TEMP}
	echo -e "----------" >> ${MAIL_TEMP}
	echo -e "You can copy these builds directly from the build server: ${SCP_CMD}" >> ${MAIL_TEMP}
	echo -e "The Linux release can be downloaded at: ${DOWNLOAD_URL}BridgePoint_${BRANCH}_linux.zip" >> ${MAIL_TEMP}
        echo -e "The Windows release can be downloaded at: ${DOWNLOAD_URL}BridgePoint_${BRANCH}_windows.zip" >> ${MAIL_TEMP}
	echo -e " " >> ${MAIL_TEMP}
	
	cat ${MAIL_TEMP} | ${MAIL_CMD} "${BUILD_ADMIN}"
	
	echo -e "Exiting run_build.sh::distribute_and_notify"
}

#-------------------------------------------------------------------------------
# Main
#-------------------------------------------------------------------------------

# Verify parameters
if [ "$#" -lt 2 ]; then
  echo "This script requires two parameters.  The other parameters are optional.  See below for usage."
  echo
  echo "run_build.sh BridgePoint_Home_Directory Build_Root <Branch_Name> <upload location> <package only> <clean>"
  echo
  echo "See the script header for more detail."
  exit 1
fi 

date 

BPHOMEDIR="$1"
if [ "$2" = "/" ]; then
  BUILD_MOUNT="/build"
else
  BUILD_MOUNT="$2/build"
fi

# Do not modify these variables:
BUILD_ROOT="${BUILD_MOUNT}/work"
GIT_REPO_ROOT="${BUILD_MOUNT}/git/xtuml"
GIT_BP="${GIT_REPO_ROOT}/bridgepoint"
# if no arguments are present default to master
BRANCH="master"
if [ "$3" != "" ]; then
  BRANCH="$3"
fi
if [ "$4" != "" ]; then
  UPLOAD_SPEC="$4"
else
  UPLOAD_SPEC=""
fi
if [ "$5" != "" ]; then
  package_only="$5"
else
  package_only=""
fi
if [ "$6" != "" ]; then
  clean="$6"
else
  clean="yes"
fi

# Make sure github credentials are available in the environment
if [ "${GITUSER}" = "" ] || [ "${GITPASS}" = "" ]; then
  echo "The build requires the environment variables GITUSER and GITPASS to be set for checking files out of github."
  echo "GITPASS may be a real password or, preferably, a github API token for the specified GITUSER."
  exit 1
fi

# echo out variables
echo "BUILD_MOUNT=${BUILD_MOUNT}"
echo "BUILD_ROOT=${BUILD_ROOT}"
echo "BRANCH=${BRANCH}"
echo "GIT_REPO_ROOT=${GIT_REPO_ROOT}"
echo "BPHOMEDIR=${BPHOMEDIR}"

# this flag is constant and could potentially be removed, but it is 
# being left in case we do want to have the build be different then other 
# releases.
BUILD_TYPE="nonrelease"

# This variable is used to decided if we want to look in head for files not
# found in the specified branch.  Currently it is always set  to yes.  It
# is being left in the script to allow this to be modified in the future if
# desired
ALLOW_FALLBACK="yes"

BUILD_DIR="${BUILD_ROOT}/${BRANCH}"
WORKSPACE="${BUILD_DIR}"
LOG_DIR="${BUILD_DIR}/log"
EF="errors.txt"
DF="diff.txt"
BL="build.txt"
ERROR_FILE="${LOG_DIR}/${EF}"
DIFF_FILE="${LOG_DIR}/${DF}"
BUILD_LOG="${LOG_DIR}/${BL}""
MAIL_CMD="/usr/sbin/ssmtp"

TIMESTAMP=`date +%Y%m%d%H%M`

#
# This is the location, on the build server, where this build is found
#
RELEASE_BASE="${BUILD_MOUNT}/releases"
BUILD_TARGET="${BRANCH}-${TIMESTAMP}"
RESULT_FOLDER="${RELEASE_BASE}/${BUILD_TARGET}"
mkdir -p "${RESULT_FOLDER}"

#
# This is where the extension result goes
#
RESULT_FOLDER_EXTENSION="${RELEASE_BASE}/${BUILD_TARGET}/BridgePoint_${BRANCH}"
mkdir -p "${RESULT_FOLDER_EXTENSION}"


STAGING_AREA=${BUILD_MOUNT}/staging
mkdir -p "${STAGING_AREA}"

if [ "${package_only}" != "yes" ]; then
  # assure that we are starting with a clean build folder.
  rm -rf ${BUILD_DIR}
fi

mkdir -p "${BUILD_DIR}"
mkdir -p "${LOG_DIR}"
mkdir -p "${GIT_REPO_ROOT}"
mkdir -p "${BUILD_ROOT}"

# We will perform all work in the build's branch folder. 
cd  "${BUILD_DIR}"

# Do the dos2unix conversion using translate.
tr -d '\r' < "${BUILD_ROOT}/init_git_repositories.sh" > "${BUILD_ROOT}/init_git_repositories.tmp"
cmp -s "${BUILD_ROOT}/init_git_repositories.sh" "${BUILD_ROOT}/init_git_repositories.tmp" >/dev/null 2>&1
if [ $? -eq 1 ]; then
  echo -e "Putting new init_git_repositories.sh into place"
  mv "${BUILD_ROOT}/init_git_repositories.tmp" "${BUILD_ROOT}/init_git_repositories.sh"
  chmod a+x "${BUILD_ROOT}/init_git_repositories.sh"
else
  rm -f "${BUILD_ROOT}/init_git_repositories.tmp"
fi
RETVAL=0
if [ "${package_only}" != "yes" ]; then
  echo -e "Getting files from github, this could take a while."
  bash "${BUILD_ROOT}/init_git_repositories.sh" ${BRANCH} ${GIT_REPO_ROOT} ${ALLOW_FALLBACK} >> ${BUILD_LOG} 2>&1
  echo -e "Done getting files from github."

  # Can do the copy and dos2unix translation in one step.
  echo -e "Configuring files for the build process."
  tr -d '\r' < ${GIT_BP}/utilities/build/configure_build_process.sh > configure_build_process.sh
  chmod a+x configure_build_process.sh

  bash configure_build_process.sh ${BUILD_DIR} ${GIT_REPO_ROOT} ${ERROR_FILE} ${STAGING_AREA} >> ${BUILD_LOG}
  cd  "${BUILD_DIR}"
  echo -e "Done configuring files for the build process."

  echo -e "Configuring external dependencies."
  bash configure_external_dependencies.sh ${GIT_REPO_ROOT} > ${LOG_DIR}/configure_externals.log 2>&1
  cd  "${BUILD_DIR}"
  echo -e "Done configuring external dependencies."

  echo -e "Building BridgePoint.  This will take a long time."
  cd $BUILD_DIR
  tr -d '\r' < ${GIT_BP}/utilities/build/headless_build.sh > headless_build.sh
  chmod a+x headless_build.sh

  ./headless_build.sh "${BRANCH}" "${BPHOMEDIR}" "${WORKSPACE}" "${GIT_BP}" "${clean}"
  RETVAL=$?
  echo -e "Done building."

  # TODO - we'll re-enable this check when headless_build stops reporting errors
  echo -e "Packaging BridgePoint into a full eclipse environment."
  #if [ ! -s ${ERROR_FILE} ]; then
    #exit 1
  #fi
  # TODO - we'll re-enable this check when headless_build stops reporting errors
  #if [ $RETVAL -eq 0 ]; then
    #exit 1
  #fi
fi

# This packages the build
cd  "${BUILD_DIR}"
bash create_bp_release.sh "${BUILD_DIR}" "${BRANCH}" "${GIT_BP}" "${LOG_DIR}" "${TIMESTAMP}" "${RESULT_FOLDER_EXTENSION}" >> ${BUILD_LOG}

bp_release_version=`awk -F"\"" '{if (/ersion.*\=.*[0-9]\.[0-9]\.[0-9]/) {print $2; exit;}}' ${GIT_BP}/src/org.xtuml.bp.pkg/plugin.xml`
bash build_installer_bp.sh ${BRANCH} ${STAGING_AREA} ${RESULT_FOLDER} windows ${bp_release_version} "${UPLOAD_SPEC}" >> ${BUILD_LOG}
cd  "${BUILD_DIR}"
  
bash build_installer_bp.sh ${BRANCH} ${STAGING_AREA} ${RESULT_FOLDER} linux ${bp_release_version} "${UPLOAD_SPEC}" >> ${BUILD_LOG}
if [ $? != "0" ]; then
  echo -e "Error! The build_installer_bp.sh script failed." >> ${ERROR_FILE}
fi

grep -c -i -w "Error" ${BUILD_LOG}
error_count=$?
if [ ${error_count} -ne 1 ]; then
  echo -e "Errors found in the build output log. Check ${BUILD_LOG}." >> ${ERROR_FILE}
fi

# This get called regardless of if we are building or packaging to notify the the build is complete
cd  "${BUILD_DIR}"
distribute_and_notify  

date
echo -e "End of run_build.sh"
