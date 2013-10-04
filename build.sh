dmd benchmarklexer.d\
    ../dscanner/stdx/d/lexer.d\
    ../dscanner/stdx/d/entities.d\
    -I../dscanner/\
    -O -release -inline -noboundscheck\
	-ofbenchmark-dmd

gdc benchmarklexer.d\
    ../dscanner/stdx/d/lexer.d\
    ../dscanner/stdx/d/entities.d\
    -I../dscanner/\
    -O2 -frelease\
	-o benchmark-gdc

#ldc2 benchmarklexer.d\
#    ../dscanner/stdx/d/lexer.d\
#    ../dscanner/stdx/d/entities.d\
#    -I../dscanner/\
#    -O -release\
#	-ofbenchmark-ldc2
