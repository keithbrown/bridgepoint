/*
* generated by Xtext
*/
package org.xtuml;

import org.eclipse.xtext.junit4.IInjectorProvider;

import com.google.inject.Injector;

public class XOALUiInjectorProvider implements IInjectorProvider {
	
	public Injector getInjector() {
		return org.xtuml.ui.internal.XOALActivator.getInstance().getInjector("org.xtuml.XOAL");
	}
	
}
