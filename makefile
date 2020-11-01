README.md : guessinggame.sh
	touch README.md
	current_date=`date`
	echo "This makefile was run at $current_date " > README.md
	echo "The number of lines in the file is " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
