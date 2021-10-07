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

package code.parsing;

import code.automaton.AutomatonTemplate;
import code.utils.Guard;
import code.utils.Match;

import java.util.*;

public class ParseLydiaDFA {

    public static AutomatonTemplate parseMONAprint(String inputDot) {
        List<String> alphabet = new ArrayList<>();
        Set<String> transitions = new HashSet<>();
        Set<Integer> accepting_states = new HashSet<>();
        Set<Integer> rejecting_states = new HashSet<>();

        String result;

        result = Match.matchOne(inputDot, ".*DFA for formula with free variables:[\\s]*(.*?)[\\s]*\\n.*");
        Collections.addAll(alphabet, result.split(" "));

        int init_state = Integer.parseInt(Objects.requireNonNull(Match.matchOne(inputDot, ".*Initial state:[\\s]*(.*?)\\n.*")));

        result = Match.matchOne(inputDot, ".*Accepting states:[\\s]*(.*?)\\n.*");
        for (String item : result.split(" ")) {
            accepting_states.add(Integer.parseInt(item));
        }
        result = Match.matchOne(inputDot, ".*Rejecting states:[\\s]*(.*?)\\n.*");
        for (String item : result.split(" ")) {
            rejecting_states.add(Integer.parseInt(item));
        }

        List<String> lines = Match.matchAll(inputDot, ".*(State[\\s]*\\d+:[\\s]*[\\d|X]+[\\s]*->[\\s]*state[\\s]*\\d+).*");
        for (String line : lines) {
            String _source_str = Match.matchOne(line, ".*State[\\s]*(\\d+):\\s.*");
            String _dest_str = Match.matchOne(line, ".*state[\\s]*(\\d+)[\\s]*.*");
            // no loops
            if (_source_str.equals(_dest_str))
                continue;
            String guard = Match.matchOne(line, ".*:[\\s](.*?)[\\s]->.*");
            String[] split_guard = guard.replaceAll("X", " ").replace("", " ").trim().split(" ");
            long sum = 0;
            if (!split_guard[0].equals("")) {
                sum = Arrays.stream(split_guard).mapToInt(Integer::parseInt).sum();
            }
            if (sum <= 1) {
                if (guard.contains("X")) {
                    // if the guard, without X, is > 1, we ignore it.
                    // if the guard, without X, is = 1, replaceAll(X, 0)
                    // if the guard, without X, is = 0, we compute only the combinantions with 0 <= sum <= 1
                    Guard g = new Guard(guard);
                    HashSet<String> explicit_labels = g.getFlat();
                    for (String l : explicit_labels) {
                        transitions.add(String.format("%s,%s,%s", _source_str, l, _dest_str));
                    }
                }
                else {
                    transitions.add(String.format("%s,%s,%s", _source_str, guard, _dest_str));
                }
            }
        }

        Set<Integer> all_states = new HashSet<>(accepting_states);
        all_states.addAll(rejecting_states);
        return new AutomatonTemplate(alphabet, transitions, all_states, init_state, accepting_states);
    }

    public static void main(String[] args) {
        String DFA = "DFA for formula with free variables: a b d \n" +
                "Initial state: 0\n" +
                "Accepting states: 1 \n" +
                "Rejecting states: 0 2 3 \n" +
                "\n" +
                "Automaton has 4 state(s) and 7 BDD-node(s)\n" +
                "Transitions:\n" +
                "State 0: X0X -> state 1\n" +
                "State 0: X10 -> state 2\n" +
                "State 0: X11 -> state 3\n" +
                "State 1: XXX -> state 1\n" +
                "State 2: X0X -> state 1\n" +
                "State 2: X1X -> state 2\n" +
                "State 3: 00X -> state 1\n" +
                "State 3: 01X -> state 2\n" +
                "State 3: 1XX -> state 1\n";

        AutomatonTemplate a = ParseLydiaDFA.parseMONAprint(DFA);
        System.out.println(a);
    }
}

