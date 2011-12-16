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

import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

/**
 * Some static helper methods.
 * 
 * @version $Id: Utils.java 3840 2009-07-08 20:29:46Z mosipov $
 */
public class Utils {

	/**
	 * Constructs a set of uppercased strings from a delimiter-separated string.
	 * 
	 * @param stringList
	 * @param delimiter
	 *            The delimiter.
	 * @return An emtpy list if 'stringList' is empty else a lowercased set of
	 *         strings.
	 * @throws IllegalArgumentException
	 *             if 'delimiter' is empty.
	 */
	public static Set<String> getSet(final String stringList,
			final String delimiter) {
		if (isEmpty(delimiter))
			throw new IllegalArgumentException(
					"Argument 'delimiter' shouldn't be empty!");
		if (isEmpty(stringList))
			return new HashSet<String>();

		Set<String> set = new HashSet<String>();
		StringTokenizer st = new StringTokenizer(stringList, delimiter);
		while (st.hasMoreTokens()) {
			String tmp = st.nextToken();
			if (isNotEmpty(tmp)) // simple empty filter
				set.add(tmp.toLowerCase());
		}
		return set;
	}

	/**
	 * Just a wrapper to {@link #getSet(String, String)} for using '&#124;' as
	 * delimiter.
	 */
	public static Set<String> getSet(final String stringList) {
		return getSet(stringList, "|");
	}

	/**
	 * Checks if a string is <code>null</code> or empty.
	 * 
	 * @param str
	 *            to check
	 * @return <code>true</code> if the string is <code>null</code> or
	 *         empty.
	 */
	public static boolean isEmpty(final String str) {
		return str == null || str.length() == 0;
	}

	/**
	 * Just a wrapper to {@link #isEmpty(String)}.
	 * 
	 * @param str
	 *            to ckeck
	 * @return <code>true</code> if the String is not empty or not
	 *         <code>null</code>.
	 */
	public static boolean isNotEmpty(final String str) {
		return !isEmpty(str);
	}

	/**
	 * Checks if a String is whitespace, empty or null.
	 * 
	 * @param str
	 *            to check
	 * @return <code>true</code> if the string is <code>null</code>, empty
	 *         or contains whitespace only.
	 */
	public static boolean isBlank(final String str) {

		if (isEmpty(str))
			return true;

		for (char c : str.toCharArray()) {
			if (!Character.isWhitespace(c))
				return false;
		}

		return true;
	}

	/**
	 * Just a wrapper to {@link #isBlank(String)}.
	 * 
	 * @param str
	 *            to check
	 * @return <code>true</code> if the string is not <code>null</code>,
	 *         not empty or does not contain whitespace only.
	 */
	public static boolean isNotBlank(final String str) {
		return !isBlank(str);
	}
}
