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

import java.util.Set;

public class TraceAutomaton<T> extends Automaton<T> {

    public TraceAutomaton(Set<T> alphabet, Set<State> states, Set<Transition<T>> transitionFunction, Set<Transition<T>> no_dead_ends) {
        super(alphabet, states, transitionFunction, no_dead_ends);
    }
}
