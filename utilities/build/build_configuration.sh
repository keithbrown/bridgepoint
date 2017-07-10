# This script sets up environment variables that
# are required to prepare a development workspace
# as well as build such a workspace
export GIT_DIR=~/git3
# for mac us this install dir
#export bp_install_dir=~/xtuml/BridgePoint.app/Contents/Eclipse/
# for linux uncomment this line and comment the mac version
export bp_install_dir=~/xtuml/BridgePoint
export WORKSPACE=~/ws/dev3
export INCLUDE_TESTS=false
export XTUML_DEVELOPMENT_REPOSITORY=${GIT_DIR}/bridgepoint
export XTUML_TEST_MODEL_REPOSITORY=${GIT_DIR}/models/test
export mcj_path=${XTUML_DEVELOPMENT_REPOSITORY}/src/MC-Java
export bp_test_path=${XTUML_DEVELOPMENT_REPOSITORY}/../bptest

