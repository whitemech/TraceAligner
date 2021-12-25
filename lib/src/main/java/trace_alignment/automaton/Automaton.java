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

import java.util.*;
import java.util.stream.Collectors;

public class Automaton<T> {
    private static int nextId = 0;

    private String id;
    private final Set<T> alphabet;
    private final Set<State> states;
    private final Set<Transition<T>> transitionFunction;
    private final Set<Transition<T>> dead_ends;

    public Automaton(Set<T> alphabet, Set<State> states, Set<Transition<T>> transitionFunction, Set<Transition<T>> dead_ends) {
        this.alphabet = alphabet;
        this.states = states;
        this.transitionFunction = transitionFunction;
        this.dead_ends = dead_ends;
        if (! this.validate())
            throw new IllegalArgumentException();
        this.id = String.format("%d", Automaton.nextId);
        Automaton.nextId++;
    }

    private boolean _validate_transition_symbol() {
        return this.transitionFunction.stream().allMatch(t -> this.alphabet.contains(t.getSymbol()));
    }
    private boolean _validate_transition_source() {
        return this.transitionFunction.stream().allMatch(t -> this.states.contains(t.getInputState()));
    }
    private boolean _validate_transition_destination() {
        return this.transitionFunction.stream().allMatch(t -> this.states.contains(t.getOutputState()));
    }
    private boolean validate() {
        return this._validate_transition_source()
                && this._validate_transition_destination();
    }

    public String getId() {
        return id;
    }

    public Set<T> getAlphabet() {
        return alphabet;
    }

    public Set<State> getStates() {
        return states;
    }

    public Set<Transition<T>> getTransitionFunction() {
        return transitionFunction;
    }

    public Set<Transition<T>> getDead_ends() {
        return dead_ends;
    }

    public Set<Transition<T>> getAllTransitions() {
        Set<Transition<T>> allTransitions = this.getTransitionFunction();
        allTransitions.addAll(this.getDead_ends());
        return allTransitions;
    }

    public List<State> getAcceptStates(){
        return states.stream().filter(State::isAcceptState)
                .collect(Collectors.toList());
    }

    public State getInitState(){
        return states.stream().filter(State::isInitState).findFirst().get();
    }

    public State getState(String name) {
        State state = new State();
        for (State s : states) {
            if (s.getName().equals(name)) {
                state = s;
            }
        }
        return state;
    }

    public boolean run(State state, Queue<T> symbol)
            throws IllegalStateException, IllegalArgumentException {
        if(symbol.isEmpty() && state.isAcceptState()){
            return true;
        }
        else if (symbol.isEmpty()) {
            return false;
        }
        if(!alphabet.contains(symbol.peek())){
            throw new IllegalArgumentException();
        }
        Optional<State> nextState = getNextState(state, symbol.poll());
        if(nextState.isPresent()){
            return run(nextState.get(), symbol);
        }
        throw new IllegalStateException();
    }

    private Optional<State> getNextState(State state, T alphabet){
        return transitionFunction.stream()
                .filter(t -> t.getInputState().equals(state) &&
                        t.getSymbol().equals(alphabet))
                .map(Transition::getOutputState).findFirst();
    }

    public int size() {
        return this.getStates().size();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Automaton)) return false;
        Automaton<?> automaton = (Automaton<?>) o;
        return Objects.equals(alphabet, automaton.alphabet) && Objects.equals(states, automaton.states) && Objects.equals(transitionFunction, automaton.transitionFunction);
    }

    @Override
    public int hashCode() {
        return Objects.hash(alphabet, states, transitionFunction);
    }

    @Override
    public String toString() {
        return "Automaton{" +
                "id='" + id + '\'' +
                ", alphabet=" + alphabet +
                ", states=" + states +
                ", transitionFunction=" + transitionFunction +
                ", dead_ends=" + dead_ends +
                '}';
    }
}
