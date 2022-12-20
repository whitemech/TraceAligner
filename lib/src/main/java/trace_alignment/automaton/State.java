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

import java.util.Objects;

public class State implements AutomatonComponents {
    private String name;
    private boolean initState = false;
    private boolean acceptState = false;
    private String automatonId;

    public State(String name, boolean isInitState, boolean isAcceptState) {
        this.name = name;
        this.initState = isInitState;
        this.acceptState = isAcceptState;
    }

    public State() { }

    public String getName() {
        return name;
    }

    public String getAutomatonId() {
        return this.automatonId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAutomatonId(String id) {
        this.automatonId = id;
    }

    /**
     * @return True if the State is the initial state, otherwise False.
     */
    public boolean isInitState() {
        return initState;
    }

    /**
     * @param initState the initial state
     */
    public void setInitState(boolean initState) {
        this.initState = initState;
    }

    public boolean isAcceptState() {
        return acceptState;
    }

    public void setAcceptState(boolean acceptState) {
        this.acceptState = acceptState;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof State)) return false;
        State state = (State) o;
        return initState == state.initState && acceptState == state.acceptState && automatonId == state.automatonId && Objects.equals(name, state.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, initState, acceptState);
    }

    @Override
    public String toString() {
        return String.format("s%s", name);
    }
}
