.RECIPEPREFIX = >

new:
> PYTHONIOENCODING=utf-8 <original/mnd.xml bin/new

out/mnd.txt: tmp/mnd.xml bin/xml-to-text
> @mkdir -p out
> <$< PYTHONIOENCODING=utf-8 bin/xml-to-text >$@

tmp/mnd.xml: Makefile bin/remove-namespace bin/simplify bin/convert-quotes
tmp/mnd.xml: bin/remove-blank-lines bin/convert-line-breaks bin/strip-lines
tmp/mnd.xml: original/mnd.xml
> @mkdir -p tmp
> <$< bin/remove-namespace | bin/convert-quotes | bin/simplify | \
>     bin/convert-line-breaks | bin/strip-lines | bin/remove-blank-lines >$@
