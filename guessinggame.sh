#!/usr/bin/env bash
#File: guessinggame.sh

function guessinggame {
	user_answer=-1
	number_of_files=`ls -al | grep '^-' | wc -l`
	echo '*************************************'
	echo '****Welcome to the Guessing Game*****'
	echo '*************************************'
	echo '----You have to guess the number of'
	echo '-----files in the current directory'
	echo ''
	while [[ $number_of_files -ne $user_answer ]]
	do
		read -p 'Please, write the number you guess: ' user_answer
		if  [[ $user_answer < $number_of_files ]]
		then
			echo 'Too low! Try it again.'
		elif [[ $user_answer > $number_of_files ]]
		then
			echo 'Too high! Try it again.'
		else
			echo '  ________________________________'
			echo '       ....     ...     ....'
			echo "     \\( ^_^)/ \\(^-^)/ \\(◠-◠ )/"
			echo '             Correct!!'
			echo '   You have won the Guessing Game'
			echo '  ________________________________'
		fi
	done
}
guessinggame
