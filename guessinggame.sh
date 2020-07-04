files_count=$(ls | wc -l)

echo "Welcome to guessing game challenge"
echo "Can you guess how many files are in this directory ?"
read response

function guessing_game {
    while [[ $response -ne files_count ]]
    do
        if [[ $response -lt files_count ]]
        then
            echo "Your answer is less than the correct answer. Try again."
            read response
        elif [[ $response -gt files_count ]]
        then
            echo "Your answer is greater than the correct answer. Try again."
            read response
        fi
    done

    echo "Congratulations, you guessed right"
    }

guessing_game