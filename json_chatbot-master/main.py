import json
import re
import random

# Load JSON data
def load_json(file):
    with open(file) as bot_responses:
        print(f"Loaded '{file}' successfully!")
        return json.load(bot_responses)

# Store JSON data
response_data = load_json("intents.json")

# Create a dictionary to store responses for each input
input_responses = {}

def get_response(input_string):
    input_string = input_string.lower().strip()

    # Check if input is empty
    if not input_string:
        return "Please type something so we can chat :("

    # Check if the response for this input is already in the dictionary
    if input_string in input_responses:
        return input_responses[input_string]

    split_message = re.split(r'\s+|[,;?!.-]\s*', input_string)
    score_list = []

    # Check all the responses
    for response in response_data:
        response_score = 0
        required_score = 0
        required_words = response["required_words"]

        # Check if there are any required words
        if required_words:
            for word in split_message:
                if word in required_words:
                    required_score += 1

        # Amount of required words should match the required score
        if required_score == len(required_words):
            # Check each word the user has typed
            for word in split_message:
                # If the word is in the response, add to the score
                if word in response["user_input"]:
                    response_score += 1

        # Add score to list
        score_list.append(response_score)

    # Find the best response and return it if there's a non-zero score
    best_response = max(score_list)
    if best_response > 0:
        response_index = score_list.index(best_response)
        response = response_data[response_index]["bot_response"]
        # Store the response for this input
        input_responses[input_string] = response
        return response

    # If there's no good response, return a random one.
    random_response = random.choice(response_data)["bot_response"]
    input_responses[input_string] = random_response
    return random_response

while True:
    user_input = input("You: ")
    print("Bot:", get_response(user_input))
