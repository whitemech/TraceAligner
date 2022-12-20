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

package trace_alignment.automaton;

import org.apache.commons.io.FileUtils;
import trace_alignment.utils.Helpers;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

public class LtlfToDfaAutomaton {

    public static String callLtlfToDfa(String formula) throws IOException {
        String s;
        String result;
        File tempFile = File.createTempFile("temp", ".formula");
        tempFile.deleteOnExit();
        FileUtils.writeStringToFile(tempFile, formula, "UTF-8");
        try {
            String[] command = new String[]{"bash", "-c", String.format("ltlf2dfa -l ltlf -f \"%s\"", tempFile)};
            ProcessBuilder proc_builder = new ProcessBuilder(command);
            proc_builder.redirectErrorStream(true);
            Process p = proc_builder.start();
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(p.getInputStream()));
            StringBuilder builder = new StringBuilder();
            while ((s = br.readLine()) != null) {
                builder.append(s);
                builder.append(System.getProperty("line.separator"));
            }
            result = builder.toString();

            String final_res = Helpers.postProcessDFA(result);

            p.waitFor();
            p.destroy();
            return final_res;
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "ERROR";
        }
    }
}
