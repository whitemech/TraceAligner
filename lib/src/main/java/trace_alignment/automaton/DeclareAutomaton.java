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
//
//package trace_alignment.automaton;
//
//import org.processmining.ltl2automaton.plugins.automaton.Automaton;
//import org.processmining.ltl2automaton.plugins.formula.DefaultParser;
//import org.processmining.ltl2automaton.plugins.formula.Formula;
//import org.processmining.ltl2automaton.plugins.formula.conjunction.ConjunctionFactory;
//import org.processmining.ltl2automaton.plugins.formula.conjunction.ConjunctionTreeLeaf;
//import org.processmining.ltl2automaton.plugins.formula.conjunction.ConjunctionTreeNode;
//import org.processmining.ltl2automaton.plugins.formula.conjunction.DefaultTreeFactory;
//import org.processmining.ltl2automaton.plugins.formula.conjunction.GroupedTreeConjunction;
//import org.processmining.ltl2automaton.plugins.formula.conjunction.TreeFactory;
//import org.processmining.ltl2automaton.plugins.ltl.SyntaxParserException;
//
//import java.util.ArrayList;
//import java.util.List;
//
//
//public class DeclareAutomaton {
//
//	public static String getFormulaByTemplate(DeclareTemplate template, String act_1, String act_2){
//		String formula = "";
//		switch(template){
//		case Absence:
//			formula = "!( <> ( \"" + act_1 + "\" ) )";
//			break;
//		case Absence2 :
//			formula = "! ( <> ( ( \"" + act_1 + "\" /\\ X(<>(\"" + act_1 + "\")) ) ) )";
//			break;
//		case Absence3 :
//			formula = "! ( <> ( ( \"" + act_1 + "\" /\\  X ( <> ((\"" + act_1 + "\" /\\  X ( <> ( \"" + act_1 + "\" ) )) ) ) ) ))";
//			break;
//		case Alternate_Precedence :
//			formula = "(((( !(\"" + act_2 + "\") U \"" + act_1 + "\") \\/ []( !(\"" + act_2 + "\"))) /\\ []((\"" + act_2 + "\" ->( (!(X(\"" + act_1 + "\")) /\\ !(X(!(\"" + act_1 + "\"))) ) \\/ X((( !(\"" + act_2 + "\") U \"" + act_1 + "\") \\/ []( !(\"" + act_2 + "\")))))))) /\\ !(\"" + act_2 + "\"))";
//			break;
//		case Alternate_Response :
//			formula = "( []( ( \"" + act_1 + "\" -> X(( (! ( \"" + act_1 + "\" )) U \"" + act_2 + "\" ) )) ) )";
//			break;
//		case Alternate_Succession :
//			formula = "( []((\"" + act_1 + "\" -> X(( !(\"" + act_1 + "\") U \"" + act_2 + "\")))) /\\ (((( !(\"" + act_2 + "\") U \"" + act_1 + "\") \\/ []( !(\"" + act_2 + "\"))) /\\ []((\"" + act_2 + "\" ->( (!(X(\"" + act_1 + "\")) /\\ !(X(!(\"" + act_1 + "\"))) ) \\/ X((( !(\"" + act_2 + "\") U \"" + act_1 + "\") \\/ []( !(\"" + act_2 + "\")))))))) /\\ !(\"" + act_2 + "\")))";
//			break;
//		case Chain_Precedence :
//			formula = "[]( ( X( \"" + act_2 + "\" ) -> \"" + act_1 + "\") )/\\ ! (\"" + act_2 + "\" )";
//			break;
//		case Chain_Response :
//			formula = "[] ( ( \"" + act_1 + "\" -> X( \"" + act_2 + "\" ) ) )";
//			break;
//		case Chain_Succession :
//			formula = "([]( ( \"" + act_1 + "\" -> X( \"" + act_2 + "\" ) ) )) /\\ ([]( ( X( \"" + act_2 + "\" ) ->  \"" + act_1 + "\") ) /\\ ! (\"" + act_2 + "\" ))";
//			break;
//		case Choice :
//			formula = "(  <> ( \"" + act_1 + "\" ) \\/ <>( \"" + act_2 + "\" )  )";
//			break;
//		case CoExistence :
//			formula = "( ( <>(\"" + act_1 + "\") -> <>( \"" + act_2 + "\" ) ) /\\ ( <>(\"" + act_2 + "\") -> <>( \"" + act_1 + "\" ) )  )";
//			break;
//		case Exactly1 :
//			formula = "(  <> (\"" + act_1 + "\") /\\ ! ( <> ( ( \"" + act_1 + "\" /\\ X(<>(\"" + act_1 + "\")) ) ) ) )";
//			break;
//		case Exactly2 :
//			formula = "( <> (\"" + act_1 + "\" /\\ (\"" + act_1 + "\" -> (X(<>(\"" + act_1 + "\"))))) /\\  ! ( <>( \"" + act_1 + "\" /\\ (\"" + act_1 + "\" -> X( <>( \"" + act_1 + "\" /\\ (\"" + act_1 + "\" -> X ( <> ( \"" + act_1 + "\" ) ))) ) ) ) ) )";
//			break;
//		case Exclusive_Choice :
//			formula = "(  ( <>( \"" + act_1 + "\" ) \\/ <>( \"" + act_2 + "\" )  )  /\\ !( (  <>( \"" + act_1 + "\" ) /\\ <>( \"" + act_2 + "\" ) ) ) )";
//			break;
//		case Existence :
//			formula = "( <> ( \"" + act_1 + "\" ) )";
//			break;
//		case Existence2 :
//			formula = "<> ( ( \"" + act_1 + "\" /\\ X(<>(\"" + act_1 + "\")) ) )";
//			break;
//		case Existence3 :
//			formula = "<>( \"" + act_1 + "\" /\\ X(  <>( \"" + act_1 + "\" /\\ X( <> \"" + act_1 + "\" )) ))";
//			break;
//		case Init :
//			 formula = "( \"" + act_1 + "\" )";
//			break;
//		case Not_Chain_Succession :
//			 formula = "[]( ( \"" + act_1 + "\" -> !(X( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Not_Chain_Response :
//			 formula = "[]( ( \"" + act_1 + "\" -> !(X( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Not_Chain_Precedence :
//			 formula = "[]( ( \"" + act_1 + "\" -> !(X( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Not_CoExistence :
//			formula = "(<>(\"" + act_1 + "\")) -> (!(<>( \"" + act_2 + "\" )))";
//			break;
//		case Not_Succession :
//			formula = "[]( ( \"" + act_1 + "\" -> !(<>( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Not_Precedence :
//			formula = "[]( ( \"" + act_1 + "\" -> !(<>( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Not_Response :
//			formula = "[]( ( \"" + act_1 + "\" -> !(<>( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Precedence :
//			formula = "( ! (\"" + act_2 + "\" ) U \"" + act_1 + "\" ) \\/ ([](!(\"" + act_2 + "\"))) /\\ ! (\"" + act_2 + "\" )";
//			break;
//		case Responded_Existence :
//			formula = "(( ( <>( \"" + act_1 + "\" ) -> (<>( \"" + act_2 + "\" ) )) ))";
//			break;
//		case Not_Responded_Existence :
//			formula = "(( ( <>( \"" + act_1 + "\" ) -> !(<>( \"" + act_2 + "\" ) )) ))";
//			break;
//		case Response :
//			formula = "( []( ( \"" + act_1 + "\" -> <>( \"" + act_2 + "\" ) ) ))";
//			break;
//		case Succession :
//			formula = "(( []( ( \"" + act_1 + "\" -> <>( \"" + act_2 + "\" ) ) ))) /\\ (( ! (\"" + act_2 + "\" ) U \"" + act_1 + "\" ) \\/ ([](!(\"" + act_2 + "\"))) /\\ ! (\"" + act_2 + "\" ))";
//			break;
//		}
//		return formula;
//	}
//
//	public static Automaton generateAutomatonByLTLFormula(String formula) {
//		  List<Formula> formulaeParsed = new ArrayList<Formula>();
//
//		   try {
//			formulaeParsed.add(new DefaultParser(formula).parse());
//		} catch (SyntaxParserException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		   TreeFactory<ConjunctionTreeNode, ConjunctionTreeLeaf> treeFactory = DefaultTreeFactory.getInstance();
//		   ConjunctionFactory<? extends GroupedTreeConjunction> conjunctionFactory = GroupedTreeConjunction
//		     .getFactory(treeFactory);
//		   GroupedTreeConjunction conjunction = conjunctionFactory.instance(formulaeParsed);
//		   Automaton aut = conjunction.getAutomaton().op.determinize();
//
//		   return aut;
//	}
//
//
//}
