ARG BASE_IMAGE=quay.io/jupyter/pyspark-notebook
FROM $BASE_IMAGE

RUN pip install --no-cache-dir 'duckdb==1.4.2' && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
