#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))

# Function to prompt for username
QA() {
  echo -e "\nEnter your username:"
  read USERNAME

  # Validate username length (up to 22 characters)
  USERNAME_CHAR=$(echo -n $USERNAME | wc -c)
  if [[ $USERNAME_CHAR -gt 22 || $USERNAME_CHAR -lt 1 ]]
  then
    echo "Invalid username. Please try again."
    QA
  fi
}

QA

# Check if the user exists in the database
OLD_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")
if [[ -z $OLD_USER ]]
then
  # Insert new user into the database
  INSERTED_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # Fetch game stats for existing user
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM guessing_games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM guessing_games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Get user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
if [[ -z $USER_ID ]]
then
  echo "Error: Could not retrieve user ID."
  exit 1
fi

TRIES=0
GUESS=0

# Prompt to start guessing the number
echo "Guess the secret number between 1 and 1000:"

while true
do
  read GUESS

  # Validate input
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    continue
  fi

  # Increment number of tries
  TRIES=$((TRIES + 1))

  # Check the guess
  if [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
  else
    # Correct guess
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
   
    # Insert game data into the database
    INSERTED_GAME=$($PSQL "INSERT INTO guessing_games (user_id, guesses) VALUES ($USER_ID, $TRIES)")
    if [[ $? -ne 0 ]]
    then
      echo "Error: Could not record the game data."
    fi
    exit 0
  fi
done
