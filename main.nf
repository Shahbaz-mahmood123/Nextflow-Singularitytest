#!/usr/bin/env nextflow

nextflow.enable.dsl=2

process myProcess {
    input:
    file input_file

    output:
    file 'output.txt'

    script:
    """
    singularity exec ubuntu.sif bash -c 'echo "Hello, World!" > output.txt'
    if [ -f output.txt ]; then
        echo "Hello, World!"
    else
        echo "Something went wrong."
    fi
    """

}

