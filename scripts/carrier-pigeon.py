# greet.py
with open("message.txt", "r") as f:
    message = f.read()

with open("carried_message.txt", "w") as f:
    f.write(f"The message was: {message}")
