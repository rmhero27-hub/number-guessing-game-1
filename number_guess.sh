#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

# Limit username to 22 characters
USERNAME=${USERNAME:0:22}

USER_DATA=$($PSQL "SELECT user_id, games_played, best_game FROM users WHERE username='$USERNAME';")

if [[ -z $USER_DATA ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  $PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 0, NULL);" > /dev/null

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
  GAMES_PLAYED=0
  BEST_GAME=""
else
  IFS="|" read USER_ID GAMES_PLAYED BEST_GAME <<< "$USER_DATA"

  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"

while true
do
  read GUESS

  if ! [[ $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))

  if (( GUESS > SECRET_NUMBER ))
  then
    echo "It's lower than that, guess again:"
  elif (( GUESS < SECRET_NUMBER ))
  then
    echo "It's higher than that, guess again:"
  else
    break
  fi
done

GAMES_PLAYED=$((GAMES_PLAYED + 1))

if [[ -z $BEST_GAME || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
then
  BEST_GAME=$NUMBER_OF_GUESSES
fi

$PSQL "UPDATE users SET games_played=$GAMES_PLAYED, best_game=$BEST_GAME WHERE user_id=$USER_ID;" > /dev/null

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
