/*
 *  
 *  Copyright 2021-2023 WhiteMech
 *  
 *  ------------------------------
 *  
 *  This file is part of Trace-Alignment.
 *
 *  Use of this source code is governed by an MIT-style
 *  license that can be found in the LICENSE file or at
 *  https://opensource.org/licenses/MIT.
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
