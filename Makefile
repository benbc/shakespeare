mnd.xml: mnd/original/MND.xml Makefile remove-namespace simplify convert-quotes \
		remove-blank-lines convert-line-breaks strip-lines
	<$< ./remove-namespace | ./convert-quotes | ./simplify \
		| ./convert-line-breaks | ./strip-lines | ./remove-blank-lines >$@

mnd.txt:
	<$< PYTHONIOENCODING=utf-8 ./xml-to-text >$@
