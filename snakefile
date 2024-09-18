rule all:
    input:
        "greeting.txt"

rule hello:
    output:
        "intermediate.txt"
    shell:
        "python scripts/hello.py"

rule greet:
    input:
        "intermediate.txt"
    output:
        "greeting.txt"
    shell:
        "python scripts/greet.py"
