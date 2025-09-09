# Makefile

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "Date and time when make was run: $$(date)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh | tr -d ' ' >> README.md

clean:
	rm -f README.md
