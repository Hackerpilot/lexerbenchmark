lexerbenchmark
==============

Benchmark for the std.d.lexer module

To run:
* dscanner must be checked out in the same directory that contains this project
* Use the supplied patch (dmd.diff) to create a build of DMD that just runs its lexer
* Use the build.sh script to compile the benchmark application
* Use the run.sh script to run the benchmarks and create the timing files
* Import the resulting sorted text files into a spreadsheet for graphing
