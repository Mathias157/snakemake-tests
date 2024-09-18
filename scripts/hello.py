import argparse

# hello.py
def main():
    parser = argparse.ArgumentParser(description="Write a string to a file.")
    parser.add_argument("message", type=str, help="The message to write to the file.")
    args = parser.parse_args()

    with open("intermediate.txt", "w") as f:
        f.write(args.message)

if __name__ == "__main__":
    main()
