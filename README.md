# TraceAligner

[![Trace-Alignment CI](https://github.com/whitemech/trace-alignment/actions/workflows/javapackage.yml/badge.svg)](https://github.com/whitemech/trace-alignment/actions/workflows/javapackage.yml)

This tool aligns log traces for Business Process Mining using Automated Planning techniques.

## Usage

This is the output of the cli `java -jar app/build/libs/app-0.0.1.jar --help`:

```bash
Usage: TraceAligner [-hqV] [-e=encoding] -f=FORMULAS_FILE
                                -l=LOG_FILE [-o=OUT] LDLf
TraceAligner aligns log trace using Automated Planning techniques.
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

### OpenXES, Lydia 

The project depends on the following libraries:
- OpenXES: to handle XES logs;
- Lydia: for the translation of LTLf/LDLf formulas to DFA.

OpenXES is already included in this repository within the `third_party` folder.
Instead, to install Lydia, please refer to its [official repository](https://github.com/whitemech/lydia).

## Installation

### Build

To build from source, clone the repository:
```
git clone https://github.com/whitemech/trace-alignment.git
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

## Apptainer image

An Apptainer image is available for TraceAligner.

To build the image, run:
```bash
apptainer build tracealigner.sif tracealigner.def
```
Then, you can run TraceAligner with:
```bash
./tracealigner.sif --help
```

## Authors

- [Francesco Fuggitti](https://francescofuggitti.github.io)

## License

This software is released under the MIT License.

Copyright (c) 2021-2023 WhiteMech

## Citing

If you use Plan4Past in your research, please consider citing the following paper:

```
@article{si2023dfmmp,
    title = {A Tool for Declarative Trace Alignment via Automated Planning},
    author = {Giuseppe {De Giacomo} and Francesco Fuggitti and Fabrizio Maria Maggi and Andrea Marrella and Fabio Patrizi},
    journal = {Software Impacts},
    volume = {16},
    pages = {100505},
    year = {2023},
    issn = {2665-9638},
    doi = {https://doi.org/10.1016/j.simpa.2023.100505},
}
```

## Acknowledgements

This work has been partially funded by the [ERC Advanced Grant "WhiteMech"](whitemech.github.io/)
(No. 834228) and by the [TAILOR research network](https://tailor-network.eu/) (No. 952215), the PRIN project 
RIPER (No. 20203FFYLK), and the JPMorgan AI Faculty Research Award "Resilience-based Generalized Planning and 
Strategic Reasoning".
