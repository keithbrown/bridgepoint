package org.xtuml.bp.masl.model;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;

public class MASLModelPlugin extends AbstractUIPlugin {
	private static MASLModelPlugin plugin;
	private ResourceBundle resourceBundle;
	private static boolean isActivated;

	public MASLModelPlugin() {
		super();
		plugin = this;
		try {
			resourceBundle = ResourceBundle.getBundle("org.xtuml.bp.masl.model.MASLModelPluginResources"); //$NON-NLS-1$
		} catch (MissingResourceException x) {
			resourceBundle = null;
		}
	}

	public static MASLModelPlugin getDefault() {
		return plugin;
	}

	public static IWorkspace getWorkspace() {
		return ResourcesPlugin.getWorkspace();
	}

	public static String getResourceString(String key) {
		ResourceBundle bundle = MASLModelPlugin.getDefault().getResourceBundle();
		try {
			return bundle.getString(key);
		} catch (MissingResourceException e) {
			return key;
		}
	}

	public ResourceBundle getResourceBundle() {
		return resourceBundle;
	}

	/* (non-Javadoc)
	 * @see org.osgi.framework.BundleActivator#start(org.osgi.framework.BundleContext)
	 */
	public void start(BundleContext context) throws Exception {
		/* TODO - figure out what to do and fix
		if (!CoreUtil.IsRunningHeadless) {
			super.start(context);
			MASLModelPlugin.isActivated = true;
		} else {
			MASLModelPlugin.isActivated = false;
		}*/
	}

	/* (non-Javadoc)
	 * @see org.osgi.framework.BundleActivator#stop(org.osgi.framework.BundleContext)
	 */
	public void stop(BundleContext context) throws Exception {
		if (MASLModelPlugin.isActivated) {
			super.stop(context);
		}
	}

}