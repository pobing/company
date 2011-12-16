/*
 * FCKeditor - The text editor for Internet - http://www.fckeditor.net
 * Copyright (C) 2004-2009 Frederico Caldeira Knabben
 * 
 * == BEGIN LICENSE ==
 * 
 * Licensed under the terms of any of the following licenses at your
 * choice:
 * 
 *  - GNU General Public License Version 2 or later (the "GPL")
 *    http://www.gnu.org/licenses/gpl.html
 * 
 *  - GNU Lesser General Public License Version 2.1 or later (the "LGPL")
 *    http://www.gnu.org/licenses/lgpl.html
 * 
 *  - Mozilla Public License Version 1.1 or later (the "MPL")
 *    http://www.mozilla.org/MPL/MPL-1.1.html
 * 
 * == END LICENSE ==
 */
package net.fckeditor.tool;

import javax.servlet.http.HttpServletRequest;

import net.fckeditor.handlers.ConnectorHandler;
import net.fckeditor.handlers.ResourceTypeHandler;

/**
 * Some static helper methods in conjunction with the servlet response.
 *
 * @version $Id: UtilsResponse.java 3840 2009-07-08 20:29:46Z mosipov $
 */
public class UtilsResponse {

	/**
	 * Constructs a URL from different parameters. This method is about to
	 * change in version 2.5.
	 * 
	 * @param request
	 * @param resourceType
	 * @param urlPath
	 * @param prependContextPath
	 * @param fullUrl
	 * @return constructed url
	 */
    public static String constructResponseUrl(HttpServletRequest request,
    		ResourceTypeHandler resourceType, String urlPath,
    		boolean prependContextPath, boolean fullUrl) {
    		
    	StringBuffer sb = new StringBuffer();
    	
    	if (fullUrl) {
    		String address = request.getRequestURL().toString();
    		sb.append(address.substring(0, address.indexOf('/', 8))
    				+ request.getContextPath());
    	}
    	
    	if (prependContextPath && !fullUrl)
    		sb.append(request.getContextPath());
    	
    	sb.append(ConnectorHandler.getUserFilesPath(request));
    	sb.append(resourceType.getPath());
    	
    	if (Utils.isNotEmpty(urlPath))
    		sb.append(urlPath);
    	
    	return sb.toString();
    }

}
