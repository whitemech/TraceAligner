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

import java.io.File;

import org.deckfour.xes.in.*;
import org.deckfour.xes.model.XLog;

public class ParseLog {

	public static XLog openLog(String inputLogFileName) throws Exception {
		XLog log = null;

		String[] log_types = {"mxml.gz", "mxml", "xes.gz", "xes"};
		String log_type = "";
		for (String type : log_types) {
			if (inputLogFileName.toLowerCase().endsWith(type))
				log_type = type;
		}

		XParser parser = null;
		switch (log_type){
			case "mxml.gz":
				parser = new XMxmlGZIPParser();
				break;
			case "mxml":
			case "xml":
				parser = new XMxmlParser();
				break;
			case "xes.gz":
				parser = new XesXmlGZIPParser();
				break;
			case "xes":
				parser = new XesXmlParser();
				break;
		}
		assert parser != null;
		if(parser.canParse(new File(inputLogFileName))){
			try {
				log = parser.parse(new File(inputLogFileName)).get(0);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if(log == null)
			throw new Exception("Oops ...");
		
		return log;
	}
	
}
