
SHELL := zsh

all:
	for f in **/*.lcg; do ./logic-game $$f; done

clean:
	rm **/*.png
	rm -r .cache
