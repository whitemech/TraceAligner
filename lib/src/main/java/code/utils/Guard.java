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

import java.util.ArrayList;
import java.util.HashSet;

public class Guard {
    private final String label;
    private final ArrayList<Integer> indices = new ArrayList<>();
    private final HashSet<String> flat = new HashSet<>();

    public Guard(String label) {
        this.label = label;
        int idx = this.label.indexOf("X");
        while (idx != -1) {
            this.indices.add(idx);
            idx = this.label.indexOf("X", idx + 1);
        }
        this.explicit();
    }

    @Override
    public String toString() {
        return label;
    }

    public HashSet<String> getFlat() {
        return flat;
    }

    private void explicit() {
        if (this.label.contains("1")) {
            this.flat.add(this.label.replaceAll("X", "0"));
        }
        else {
            String _lab = this.label.replaceAll("X", "0");
            this.flat.add(_lab);
            for (int i : this.indices) {
                StringBuilder sb = new StringBuilder(_lab);
                sb.setCharAt(i, '1');
                this.flat.add(sb.toString());
            }
        }
    }
}
