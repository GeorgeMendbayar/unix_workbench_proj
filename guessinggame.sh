#!/usr/bin/env bash
# File: guessinggame.sh

num=$(ls -1 | wc -l)

echo "How many files are in the current directory?:"
read response

function check_quess  {
  if [[ $response -gt $num ]]
  then 
    echo "your response is higher than the number of files!"
  else 
    echo "your response is lower than the number of files!"
  fi
}

if [[ $response -eq $num ]]
then
  echo "Congrats!! you've guessed it right"
else
  while true #[[ $response -ne $num ]]
  do
    if [[ $response -ne $num ]]
    then 
      check_quess
    else 
      echo "You've guessed it tight:)"
      break
    fi
 
    echo "Guess again:"
    read new_guess
    let response=$new_guess
  done
fi
