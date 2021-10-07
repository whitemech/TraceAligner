#!/usr/bin/env python3
# -*- coding: utf-8 -*-

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

import inspect
import os
from operator import methodcaller
from pathlib import Path
import re
import sys
from typing import Set

BASH_SHEBANG = r"#!/usr/bin/env bash"
PY_SHEBANG = r"#!/usr/bin/env python3"
PY_ENCODING_HEADER = r"# -\*- coding: utf-8 -\*-"
STAR_COPYRIGHT_NOTICE = r"""/\*
 \*  This file is part of Planning-Trace-Alignment.
 \*
 \*  Planning-Trace-Alignment is free software: you can redistribute it and/or modify
 \*  it under the terms of the GNU Lesser General Public License as published by
 \*  the Free Software Foundation, either version 3 of the License, or
 \*  \(at your option\) any later version.
 \*
 \*  Planning-Trace-Alignment is distributed in the hope that it will be useful,
 \*  but WITHOUT ANY WARRANTY; without even the implied warranty of
 \*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 \*  GNU Lesser General Public License for more details.
 \*
 \*  You should have received a copy of the GNU Lesser General Public License
 \*  along with Planning-Trace-Alignment.  If not, see <https://www.gnu.org/licenses/>.
 \*
 \*/"""
HASH_COPYRIGHT_NOTICE = r"""#
#  This file is part of Planning-Trace-Alignment.
#
#  Planning-Trace-Alignment is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  \(at your option\) any later version.
#
#  Planning-Trace-Alignment is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public License
#  along with Planning-Trace-Alignment.  If not, see <https://www.gnu.org/licenses/>.
#
#"""

JAVA_HEADER_REGEX = re.compile(r"^{}".format(STAR_COPYRIGHT_NOTICE), re.MULTILINE)
SHELL_HEADER_REGEX = re.compile(r"^{}\n\n{}".format(BASH_SHEBANG, HASH_COPYRIGHT_NOTICE), re.MULTILINE)
PY_HEADER_REGEX = re.compile(
    r"^({}\n)?{}\n\n{}".format(PY_SHEBANG, PY_ENCODING_HEADER, HASH_COPYRIGHT_NOTICE),
    re.MULTILINE,
)
GRADLE_HEADER_REGEX = re.compile(r"^{}".format(STAR_COPYRIGHT_NOTICE), re.MULTILINE)

ROOT = Path(os.path.dirname(inspect.getfile(inspect.currentframe())), "..").absolute()
INCLUDE = {
    *filter(methodcaller("is_file"), Path("src").glob("**/*")),
    *filter(methodcaller("is_file"), Path("test").glob("**/*")),
    *filter(methodcaller("is_file"), Path("scripts").glob("**/*")),
    Path("settings.gradle"),
}
IGNORE = { }


def file_matches(path: Path) -> bool:
    """Check that a file passes the checks."""
    content = path.read_text()
    if path.name.endswith(".java"):
        return re.match(JAVA_HEADER_REGEX, content) is not None
    if path.name.endswith(".sh"):
        return re.match(SHELL_HEADER_REGEX, content) is not None
    if path.name.endswith(".py"):
        return re.match(PY_HEADER_REGEX, content) is not None
    if path.name == "build.gradle":
        return re.match(GRADLE_HEADER_REGEX, content) is not None
    else:
        return True


if __name__ == "__main__":
    bad_files = set()  # type: Set[Path]
    for path in INCLUDE.difference(IGNORE):
        print("Processing {}".format(path))
        if not file_matches(path):
            bad_files.add(path)
        # else:
        #     print("Path {} is OK".format(path))

    if len(bad_files) != 0:
        print("The following files are misformatted, please fix the headers.")
        for p in sorted(bad_files):
            print(str(p))
        sys.exit(1)
    else:
        print("OK!")
        sys.exit(0)