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

public class AutomatonTemplate {
    private final List<String> alphabet;
    private final Set<String> transitions;
    private final Set<Integer> states;
    private final Integer init;
    private final Set<Integer> accepting_states;

    private final HashMap<Integer, State> statesMap = new HashMap<>();
    private final Set<Transition<String>> deadEndTransitions = new HashSet<>();

    public AutomatonTemplate(List<String> alphabet, Set<String> transitions, Set<Integer> states, int init, Set<Integer> accepting) {
        this.alphabet = alphabet;
        this.transitions = transitions;
        this.states = states;
        this.init = init;
        this.accepting_states = accepting;
        for (Integer s : this.states) {
            this.statesMap.put(s, new State(String.valueOf(s), this.init.equals(s), this.accepting_states.contains(s)));
        }
    }

    private void _trimming(Set<String> traceAlphabet) {
        HashSet<Integer> noSink = new HashSet<>(this.accepting_states);
        for (String t : this.transitions) {
            String[] split_t = t.split(",");
            noSink.add(Integer.parseInt(split_t[0]));
        }
        HashSet<Integer> to_trim = new HashSet<>(this.states);
        to_trim.removeAll(noSink);
        this.states.removeAll(to_trim);
        if (to_trim.size() != 0) {
            Integer state_to_trim = to_trim.iterator().next();
            this.statesMap.remove(state_to_trim);
        }

        HashSet<String> newTransitions = new HashSet<>(this.transitions);
        for (String t : this.transitions) {
            String[] split_t = t.split(",");
            int sum = 0;
            for (int i=0; i<split_t[1].length(); i++) {
                char ch = split_t[1].charAt(i);
                sum += Integer.parseInt(String.valueOf(ch));
            }
            if (! noSink.contains(Integer.parseInt(split_t[2]))) {
                State sink = new State("ink", false, false);
                if (sum > 1) {
                    continue;
                }
                else {
                    // either sum = 0 or sum = 1
                    // we save a transition for every symbol of the trace alphabet not appearing in the automaton alphabet
                    if (sum == 0) {
                        HashSet<String> setDifference = new HashSet<>(traceAlphabet);
                        this.alphabet.forEach(setDifference::remove);
                        for (String s : setDifference) {
                            this.deadEndTransitions.add(
                                    new Transition<>(this.statesMap.get(Integer.parseInt(split_t[0])
                                    ), s, sink)
                            );
                        }
                    }
                    else {
                        this.deadEndTransitions.add(
                                new Transition<>(this.statesMap.get(Integer.parseInt(split_t[0])),
                                        this.alphabet.get(split_t[1].indexOf("1")),
                                        sink)
                        );
                    }
                }
                newTransitions.remove(t);
            }
        }
        this.transitions.retainAll(newTransitions);
    }

    public Automaton<String> computeAutomatonNoDeadEnds(Set<String> traceAlphabet) {
        this._trimming(traceAlphabet);
        this.alphabet.forEach(traceAlphabet::remove);
        Set<Transition<String>> transitions = new HashSet<>();
        for (String t : this.transitions) {
            String[] _t = t.split(",");
            if (_t[1].matches("0+")) {
                for (String r : traceAlphabet) {
                    transitions.add(new Transition<>(this.statesMap.get(Integer.parseInt(_t[0])),
                            r, this.statesMap.get(Integer.parseInt(_t[2]))));
                }
            }
            else {
                transitions.add(new Transition<>(this.statesMap.get(Integer.parseInt(_t[0])),
                        this.alphabet.get(_t[1].indexOf("1")), this.statesMap.get(Integer.parseInt(_t[2]))));
            }
        }
        HashSet<String> new_alphabet = new HashSet<>(this.alphabet);
        new_alphabet.addAll(traceAlphabet);
        Automaton<String> automaton = new Automaton<>(new_alphabet, new HashSet<>(this.statesMap.values()), transitions, this.deadEndTransitions);
        automaton.getStates().forEach(s -> s.setAutomatonId(automaton.getId()));
        automaton.getTransitionFunction().forEach(t -> t.setAutomatonId(automaton.getId()));
        return automaton;
    }

    public Automaton<String> computeAutomatonWithDeadEnds(Set<String> traceAlphabet) {
        this.alphabet.forEach(traceAlphabet::remove);
        for (Integer s : this.states) {
            this.statesMap.put(s, new State(String.valueOf(s), this.init.equals(s), this.accepting_states.contains(s)));
        }
        Set<Transition<String>> transitions = new HashSet<>();
        for (String t : this.transitions) {
            String[] _t = t.split(",");
            if (_t[1].matches("0+")) {
                for (String r : traceAlphabet) {
                    transitions.add(new Transition<>(this.statesMap.get(Integer.parseInt(_t[0])),
                            r, this.statesMap.get(Integer.parseInt(_t[2]))));
                }
            }
            else {
                transitions.add(new Transition<>(this.statesMap.get(Integer.parseInt(_t[0])),
                        this.alphabet.get(_t[1].indexOf("1")), this.statesMap.get(Integer.parseInt(_t[2]))));
            }
        }
        HashSet<String> new_alphabet = new HashSet<>(this.alphabet);
        new_alphabet.addAll(traceAlphabet);
        Automaton<String> automaton = new Automaton<>(new_alphabet, new HashSet<>(this.statesMap.values()), transitions,
                new HashSet<>());
        automaton.getStates().forEach(s -> s.setAutomatonId(automaton.getId()));
        automaton.getTransitionFunction().forEach(t -> t.setAutomatonId(automaton.getId()));
        return automaton;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AutomatonTemplate)) return false;
        AutomatonTemplate that = (AutomatonTemplate) o;
        return Objects.equals(alphabet, that.alphabet) && Objects.equals(transitions, that.transitions) && Objects.equals(states, that.states) && Objects.equals(init, that.init) && Objects.equals(accepting_states, that.accepting_states);
    }

    @Override
    public int hashCode() {
        return Objects.hash(alphabet, transitions, states, init, accepting_states);
    }

    @Override
    public String toString() {
        return "AutomatonTemplate{" +
                "alphabet=" + alphabet +
                ", transitions=" + transitions +
                ", states=" + states +
                ", init=" + init +
                ", accepting_states=" + accepting_states +
                '}';
    }

}
