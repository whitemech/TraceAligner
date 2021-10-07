#!/bin/bash

#
#  This file is part of Planning-Trace-Alignment.
#
#  Planning-Trace-Alignment is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  Planning-Trace-Alignment is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public License
#  along with Planning-Trace-Alignment.  If not, see <https://www.gnu.org/licenses/>.
#
#

for i in {1..654}
do
    java -cp ./:../:../Utils/:../Utils/lib/OpenXES-XStream.jar:../Utils/lib/OpenXES.jar:../Utils/lib/guava-16.0.1.jar GeneratePDDLProblemTrace ../Utils/financial_log_for_experiments.xes $i > ../pddl/prob-trace-$i.pddl
done
