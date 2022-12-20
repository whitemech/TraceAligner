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

public class Helpers {

    public static String postProcessDFA(String MONAoutput) {
        MONAoutput = MONAoutput.replaceFirst("Initial state: 0", "Initial state: 1");
        return MONAoutput.replaceAll("State 0: (X+) -> state 1", "");
    }

}
