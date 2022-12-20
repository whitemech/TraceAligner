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