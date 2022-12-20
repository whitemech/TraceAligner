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

package trace_alignment.encodings;

import trace_alignment.automaton.Automaton;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public abstract class AbstractEncoding {
    private final String name;
    private boolean onlyProblem;

    private final HashSet<String> repoActivity;
    private final Automaton<String> traceAutomaton;
    private final Set<Automaton<String>> constraintAutomata;

    public AbstractEncoding(String name, HashSet<String> ra, Automaton<String> ta, Set<Automaton<String>> ca, boolean onlyProblem) {
        if (name == null || ra == null || ta == null || ca == null) {
            throw new NullPointerException();
        } else {
            this.name = name;
            this.repoActivity = ra;
            this.traceAutomaton = ta;
            this.constraintAutomata = ca;
            this.onlyProblem = onlyProblem;
        }
    }

    abstract public StringBuilder generateDomainString();
    abstract public StringBuilder generateProblemString(int trace_id);

    public List<StringBuilder> generateString(int trace_id) {
        List<StringBuilder> result = new ArrayList<>();
        if (! this.onlyProblem) {
            result.add(this.generateDomainString());
        }
        result.add(this.generateProblemString(trace_id));
        return result;
    }

    public String getName() {
        return name;
    }
}
