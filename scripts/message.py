import click

# hello.py

@click.command()
@click.option("--message", type=str, required=True, help="The message to be conveyed.")
def main(message):

    with open("intermediate.txt", "w") as f:
        f.write(message)

if __name__ == "__main__":
    main()
