# Simple snakemake

A hello world with snakemake. I asked chatgpt to make this example because i found [the offical tutorial](https://snakemake.readthedocs.io/en/stable/tutorial/basics.html) annoying, i didn't know how to install the bwa software.

## Explanation:
Rule all: This is the final target that the pipeline should produce. In this case, it's greeting.txt.

Rule hello: Runs hello.py, which creates an intermediate.txt file.

Rule greet: Depends on intermediate.txt, and runs greet.py, which reads intermediate.txt and writes the final output greeting.txt.

## Plotting the DAG
The [Directed Acyclic Graph](https://en.wikipedia.org/wiki/Directed_acyclic_graph) can be plotted (in Linux) with the following command:
```
snakemake --dag | dot -Tpdf > dag.pdf
```
...resulting in a [nice flow diagram](dag.pdf).

Note that you followed the [instructions](https://www.hpc.dtu.dk/?page_id=3816) on how to install conda (through miniconda) on the HPC and produced this plot remotely. Note also that you had to remove your default module loading of python3/3.9 in .bashrc to make it work, luckily this loading can just be implemented as part of a job_creation.sh.