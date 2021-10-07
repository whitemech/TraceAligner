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

package code.automaton;

import java.util.Objects;

public class Transition<T> implements AutomatonComponents {
    State source;
    T symbol;
    State destination;
    String automatonId;

    public Transition(State source, T symbol, State destination){
        this.source = source;
        this.symbol = symbol;
        this.destination = destination;
    }
    public State getInputState() {
        return source;
    }

    public T getSymbol() {
        return symbol;
    }

    public State getOutputState() {
        return destination;
    }

    public String getAutomatonId() {
        return automatonId;
    }

    public void setAutomatonId(String automaton) {
        this.automatonId = automaton;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Transition)) return false;
        Transition<?> that = (Transition<?>) o;
        return automatonId == that.automatonId && Objects.equals(source, that.source) && Objects.equals(symbol, that.symbol) && Objects.equals(destination, that.destination);
    }

    @Override
    public int hashCode() {
        return Objects.hash(source, symbol, destination);
    }

    @Override
    public String toString() {
        return String.format("(%s, %s, %s)",
                this.source.toString(),
                this.symbol.toString(),
                this.destination.toString());
    }
}