#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read NAME
ANSWER=$(( $RANDOM % 1000 +1 ))
START()  {
  read NUMBER
  if [[ "$NUMBER" =~ ^[0-9]+$ ]] 
  then
    if [[ "$NUMBER" == "$ANSWER" ]]; 
    then
      TRIES=$((TRIES + 1))
      ADD_GAME=$($PSQL "INSERT INTO games(user_id,guess) VALUES($USER_ID,$TRIES)")
      echo "You guessed it in $TRIES tries. The secret number was $ANSWER. Nice job!"
      return 0
    else
      if [[ $NUMBER -lt $ANSWER ]]; then
        TRIES=$((TRIES + 1))
        echo -e "\nIt's higher than that, guess again:"
        START
        return 0
      else
        TRIES=$((TRIES + 1))
        echo -e "\nIt's lower than that, guess again:"
        START
        return 0
      fi
    fi
  else
    echo -e "\nThat is not an integer, guess again:"
    START
  fi
}

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$NAME'")
TRIES=0
if [[ -z $USER_ID ]]
then
  ADD_NAME=$($PSQL "INSERT INTO users(name) VALUES('$NAME')")
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
  echo "Guess the secret number between 1 and 1000:"
  START
else
  USER_NAME=$($PSQL "SELECT name FROM users WHERE user_id = $USER_ID")
  GAME_PLAY=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE name = $NAME")
  BEST_GAME=$($PSQL "SELECT MIN(guess) FROM games INNER JOIN users USING(user_id) WHERE name = $NAME")
  echo "Welcome back, $USER_NAME! You have played $GAME_PLAY games, and your best game took $BEST_GAME guesses."
  echo "Guess the secret number between 1 and 1000:"
  START
fi
