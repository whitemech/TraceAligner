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

import trace_alignment.automaton.State;
import trace_alignment.automaton.TraceAutomaton;
import trace_alignment.automaton.Transition;

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
