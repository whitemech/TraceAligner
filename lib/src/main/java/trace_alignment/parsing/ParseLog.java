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



package trace_alignment.parsing;

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
