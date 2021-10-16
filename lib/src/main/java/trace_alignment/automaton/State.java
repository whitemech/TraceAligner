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
