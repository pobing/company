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

package net.fckeditor;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import net.fckeditor.tool.Utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Contains the configuration settings for the FCKeditor.<br />
 * By adding elements to this collection you can override the settings specified
 * in the config.js file.
 * 
 * @version $Id: FCKeditorConfig.java 3840 2009-07-08 20:29:46Z mosipov $
 */
public class FCKeditorConfig extends HashMap<String, String> {

	private static final long serialVersionUID = -4831190504944866644L;
	private final Logger logger = LoggerFactory.getLogger(FCKeditorConfig.class);

	/**
	 * Initialize the configuration collection
	 */
	public FCKeditorConfig(	) {
		super();
	}

	/**
	 * Generates the url parameter sequence from this configuration which is
	 * passed to the editor.
	 * 
	 * @return html encoded sequence of configuration parameters
	 */
	public String getUrlParams() {
		StringBuffer osParams = new StringBuffer();
		try {
			for (Map.Entry<String, String> entry : this.entrySet()) {
				if (Utils.isNotEmpty(entry.getValue())) {
					osParams.append("&amp;");
					osParams.append(URLEncoder.encode(entry.getKey(),"UTF-8"));
					osParams.append("=");
					osParams.append(URLEncoder.encode(entry.getValue(),"UTF-8"));
				}
			}
			
		} catch (UnsupportedEncodingException e) {
			logger.error("Configuration parameters could not be encoded", e);
		}
		
		if (osParams.length() > 0)
			osParams.delete(0,5);
		return osParams.toString();
	}
}
