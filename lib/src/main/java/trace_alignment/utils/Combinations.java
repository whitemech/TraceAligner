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

import trace_alignment.automaton.AutomatonComponents;
import trace_alignment.automaton.State;
import trace_alignment.automaton.Transition;

import java.util.*;
import java.util.stream.Collectors;

public class Combinations {

    private static <T extends AutomatonComponents> Set<String> _distictAutomata(Set<T> comb) {
        return comb.stream().map(T::getAutomatonId).collect(Collectors.toSet());
    }

    private static <T extends AutomatonComponents> boolean _deadEndInCombination(Set<Transition<T>> comb) {
        return comb.stream().anyMatch(t -> t.getOutputState().getName().equals("ink"));
    }

    public static <T extends AutomatonComponents> ArrayList<?> combinations(List<T> l, int k, HashSet<State> s) {
        return combinations("", l, k, s);
    }

    public static <T extends AutomatonComponents> ArrayList<?> combinations(String label, List<T> l, int k, HashSet<State> s) {
        HashSet<CombinationOfStates> combStates = new HashSet<>();
        ArrayList<CombinationOfTransitions> combTrans = new ArrayList<>();
        int n = l.size();
        if (k > n) {
            System.out.println("Invalid input, k > n");
            return null;
        }
        // init combination index array
        int[] pointers = new int[k];
        int r = 0;
        int i = 0;

        while (r >= 0) {
            // forward step if i <= (N + (r-K))
            if (i <= (n + (r - k))) {
                pointers[r] = i;
                // if combination array is full, set and increment i;
                if (r == k - 1) {
                    Set<T> combination = Arrays.stream(pointers).mapToObj(l::get).collect(Collectors.toSet());
                    Set<String> distinctAutomata = _distictAutomata(combination);
                    if (distinctAutomata.size() == k) {
                        if (label.isEmpty()) {
                            combStates.add(new CombinationOfStates((HashSet<State>) combination, s,
                                    (HashSet<String>) distinctAutomata));
                        } else {
                            if (!_deadEndInCombination((HashSet<Transition<T>>) combination)) {
                                HashSet<T> reminder = new HashSet<>(l);
                                reminder.removeIf(combination::contains);
                                combTrans.add(new CombinationOfTransitions(label, k,
                                        (HashSet<Transition<String>>) combination, (HashSet<Transition<String>>) reminder));
                            }
                        }
                    }
                    i++;
                } else {
                    // if combination is not full yet, select next element
                    i = pointers[r] + 1;
                    r++;
                }
            }
            // backward step
            else {
                r--;
                if (r >= 0)
                    i = pointers[r] + 1;
            }
        }
        if (label.isEmpty()) {
            return new ArrayList<>(combStates);
        }
        else {
            return combTrans;
        }
    }

}
