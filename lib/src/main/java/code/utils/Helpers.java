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

package code.utils;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Helpers {

    public static void createFileFromString(String nomeFile, StringBuffer buffer) {
        File file = null;
        FileWriter fw = null;

        try {
            file = new File(nomeFile);
            file.setExecutable(true);

            fw = new FileWriter(file);
            fw.write(buffer.toString());
            fw.close();

            //fw.flush();
            //fw.close();
        }
        catch(IOException e) {
            e.printStackTrace();
        }
    }

}
