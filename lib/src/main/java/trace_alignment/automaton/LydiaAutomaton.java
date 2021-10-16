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

package trace_alignment.automaton;

import org.apache.commons.io.FileUtils;

import java.io.*;

public class LydiaAutomaton {

    public static String callLydia(String formula, boolean isLTLf) throws IOException {
        String s;
        String result;
        File tempFile = File.createTempFile("temp", ".formula");
        tempFile.deleteOnExit();
        FileUtils.writeStringToFile(tempFile, formula, "UTF-8");
        try {
            String[] command;
            if (isLTLf) {
                command = new String[]{"bash", "-c", String.format("lydia -q -p -l ltlf -f \"%s\"", tempFile)};
            } else
                command = new String[]{"bash", "-c", String.format("lydia -q -p -l ldlf -f \"%s\"", tempFile)};

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

            p.waitFor();
            p.destroy();
            return result;
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "ERROR";
        }
    }
}
