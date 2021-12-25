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

package trace_alignment.encodings;

import trace_alignment.automaton.Automaton;
import fr.uga.pddl4j.parser.Domain;
import fr.uga.pddl4j.parser.Problem;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public abstract class AbstractEncoding {
    private final String name;
    private Domain domain;
    private Problem problem;
    private boolean onlyProblem;

    private final Automaton<String> traceAutomaton;
    private final Set<Automaton<String>> constraintAutomata;

    public AbstractEncoding(String name, Automaton<String> ta, Set<Automaton<String>> ca, boolean onlyProblem) {
        if (name == null || ta == null || ca == null) {
            throw new NullPointerException();
        } else {
            this.name = name;
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

    public Domain getDomain() {
        return domain;
    }

    public Problem getProblem() {
        return problem;
    }
}
