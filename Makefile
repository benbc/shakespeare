.RECIPEPREFIX = >

out/mnd.txt: tmp/mnd.xml
> @mkdir -p out
> <$< PYTHONIOENCODING=utf-8 ./xml-to-text >$@

tmp/mnd.xml: remove-blank-lines convert-line-breaks strip-lines
tmp/mnd.xml: original/mnd.xml Makefile remove-namespace simplify convert-quotes
> @mkdir -p tmp
> <$< ./remove-namespace | ./convert-quotes | ./simplify | \
>     ./convert-line-breaks | ./strip-lines | ./remove-blank-lines >$@
