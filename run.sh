find ../phobos/ -name "*.d" | /bin/grep -v index.d | xargs -I {} hackeddmd {} > dmd-gcc-unsorted.txt
find ../phobos/ -name "*.d" | /bin/grep -v index.d | xargs -I {} benchmark-gdc {} > lexer-gdc-unsorted.txt
find ../phobos/ -name "*.d" | /bin/grep -v index.d | xargs -I {} benchmark-dmd {} > lexer-dmd-unsorted.txt
sort lexer-dmd-unsorted.txt > lexer-dmd-sorted.txt
sort lexer-gdc-unsorted.txt > lexer-gdc-sorted.txt
sort dmd-gcc-unsorted.txt > dmd-gcc-sorted.txt
