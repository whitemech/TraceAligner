# Trace-Alignment Code

![Trace-Alignment Code CI](https://github.com/fabio-patrizi/trace-alignment/workflows/Trace-Alignment%20Code%20CI/badge.svg)

This tool aligns log traces for Business Process Mining using Automated Planning techniques.

## Usage

This is the output of the cli `java -jar app/build/libs/app-0.0.1.jar --help`:

```bash
Usage: Planning-Trace-Alignment [-hqV] [-e=encoding] -f=FORMULAS_FILE
                                -l=LOG_FILE [-o=OUT] LDLf
Planning-Trace-Alignment aligns log trace using Automated Planning techniques.
      LDLf                  If using LDLf formulas.
                              Default: false
  -q, --quiet               Quite mode.
  -h, --help                Show this help message and exit.
  -V, --version             Print version information and exit.
  -l, --log=LOG_FILE        Path to the log file.
  -f, --formulas=FORMULAS_FILE
                            Path to the formulas file.
  -e, --encoding=encoding   The PDDL encoding type.
                            0: General
                            1: General with Conjunctive Goals
                            2: General with Shared States
                            3: General with Conjunctive Goals and Shared States
                            4: Strips with Conjunctive Goals
                              Default: 0
  -o, --output=OUT          Path to the output folder.
                              Default: ./output/
```

## Preliminaries

### Java JDK
We use the Java JDK 1.8

### Gradle
We use Gradle as a build tool. Please
check the [official website](https://gradle.org/)
to download it for your platform.

### Lydia, PDDL4J 

The project depends on the following libraries, which are already imported by Gradle:
- Lydia: for the translation of LTLf/LDLf formulas to DFA
- PDDL4J: for PDDL manipulations

To install Lydia, please refer to its [official repository](https://github.com/whitemech/lydia).
PDDL4J, instead, is included in this repository within the `third_party` folder. 

## Installation

### Build

To build from source, clone the repository:
```
git clone https://github.com/fabio-patrizi/trace-alignment.git
cd trace-alignment/code
```

To build and run tests:

```bash
./gradlew build
```

To install:

```bash
./gradlew install
```

Afterwards, to run the program:
```bash
java -jar app/build/libs/app-0.0.1.jar
```

## License

This software is released under the GNU Lesser General Public License version 3 or later.

## Acknowledgements

This work has been partially funded by the [ERC Advanced Grant "WhiteMech"](whitemech.github.io/)
(No. 834228) and by the [TAILOR research network](https://tailor-network.eu/) (No. 952215).