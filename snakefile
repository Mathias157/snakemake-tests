# Load the config file at the top
configfile: "config.yaml"

rule all:
    input:
        "greeting.txt"

rule message:
    output:
        "intermediate.txt"
    params:
        message=config["message"]  # Get message from config file
    shell:
        'python scripts/message.py --message "{params.message}"'

rule messenger:
    input:
        "intermediate.txt"
    output:
        "greeting.txt"
    shell:
        "python scripts/messenger.py"
