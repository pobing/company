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
package net.fckeditor.requestcycle;

import javax.servlet.http.HttpServletRequest;

import net.fckeditor.handlers.ConnectorHandler;

/**
 * An interface which provides a way to build a user-dependent
 * <code>UserFilesPath</code>.
 * 
 * @version $Id: UserPathBuilder.java 3840 2009-07-08 20:29:46Z mosipov $
 */
public interface UserPathBuilder {

	/**
	 * Getter for the user-dependent <code>UserFilesPath</code>.<br />
	 * <strong>Important:</strong>
	 * <ul>
	 * <li> If the implementation returns <code>null</code>,
	 * {@link ConnectorHandler} will used the default one! That's useful, if the
	 * implementation doesn't bother you.</li>
	 * <li>The returned directory string has to start with '/', but has to end
	 * without '/'.</li>
	 * <li>The path has to be within the context.</li>
	 * </ul>
	 * 
	 * @param request
	 * @return <code>null</code> or the <code>UserFilesPath</code> for the
	 *         current user.
	 */
	public String getUserFilesPath(final HttpServletRequest request);
}
