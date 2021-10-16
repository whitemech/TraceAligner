/*
 *  This file is part of Planning-Trace-Alignment.
 *
 *  Planning-Trace-Alignment is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Planning-Trace-Alignment is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with Planning-Trace-Alignment.  If not, see <https://www.gnu.org/licenses/>.
 *
 */



package trace_alignment.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Match {

    public static String matchOne(String text, String regex){
        Pattern p = Pattern.compile(regex, Pattern.MULTILINE);
        Matcher m = p.matcher(text);
        if (m.find())
            return m.group(1);
        else
            return null;
    }

    public static List<String> matchAll(String text, String regex){
        List<String> allMatches = new ArrayList<String>();
        Pattern p = Pattern.compile(regex, Pattern.MULTILINE);
        java.util.regex.Matcher m = p.matcher(text);
        while (m.find()) {
            allMatches.add(m.group(1));
        }
        return allMatches;
    }
}
