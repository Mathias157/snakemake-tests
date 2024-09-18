# Load the config file at the top
configfile: "config.yaml"

rule all:
    input:
        "carried_message.txt"

rule message:
    output:
        "message.txt"
    params:
        message=config["message"]  # Get message from config file
    shell:
        """
        python scripts/message.py --message "{params.message}" 
        """

rule messenger:
    input:
        "message.txt"
    output:
        "carried_message.txt"
    shell:
        """
        python scripts/carrier-pigeon.py
        """