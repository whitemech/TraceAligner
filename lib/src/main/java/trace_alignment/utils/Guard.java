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
