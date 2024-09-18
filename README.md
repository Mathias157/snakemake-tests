# Simple snakemake

A hello world with snakemake. I asked chatgpt to make this example because i found [the offical tutorial](https://snakemake.readthedocs.io/en/stable/tutorial/basics.html) annoying, i didn't know how to install the bwa software.

## Explanation:
Rule all: This is the final target that the pipeline should produce. In this case, it's greeting.txt.

Rule hello: Runs hello.py, which creates an intermediate.txt file.

Rule greet: Depends on intermediate.txt, and runs greet.py, which reads intermediate.txt and writes the final output greeting.txt.