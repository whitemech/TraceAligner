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

import code.automaton.State;
import code.automaton.TraceAutomaton;
import code.automaton.Transition;

import java.util.*;

public class Trace {
	private final String name;
	private List<String> trace_alphabet;
	
	public Trace(String trace_name) {
		this.name = trace_name;
		this.trace_alphabet = new ArrayList<>();
	}

	public String getName() {
		return name;
	}

	public void setTrace_alphabet(List<String> trace_alphabet) {
		this.trace_alphabet = trace_alphabet;
	}

	public TraceAutomaton<String> computeTraceAutomaton() {
		Set<String> al = new HashSet<>(this.trace_alphabet);
		List<State> ss = new ArrayList<>();
		Set<Transition<String>> tt = new HashSet<>();
		for (int i=0; i<=this.trace_alphabet.size(); i++) {
			ss.add(new State(String.valueOf(i), i == 0, i == this.trace_alphabet.size()));
		}
		for (int i = 0; i<this.trace_alphabet.size(); i++) {
			tt.add(new Transition<>(ss.get(i), this.trace_alphabet.get(i), ss.get(i + 1)));
		}

		return new TraceAutomaton<>(al, new HashSet<>(ss), tt, new HashSet<>());
	}
}
