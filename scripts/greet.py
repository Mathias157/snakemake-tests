# greet.py
with open("intermediate.txt", "r") as f:
    message = f.read()

with open("greeting.txt", "w") as f:
    f.write(f"Greeting message: {message}")
