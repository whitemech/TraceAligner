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

public enum DeclareTemplate {
	Absence, Absence2, Absence3, Alternate_Precedence, Alternate_Response, Alternate_Succession, 
	Chain_Precedence, Chain_Response, Chain_Succession, Choice, CoExistence, 
	Exactly1, Exactly2, Exclusive_Choice, Existence, Existence2, Existence3, 
	Init, 
	Not_Chain_Succession, Not_CoExistence, Not_Succession,
	Precedence, Response, Responded_Existence,
	Succession,Not_Chain_Precedence,Not_Chain_Response,Not_Precedence,Not_Response, Not_Responded_Existence
}
