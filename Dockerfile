FROM quay.io/jupyter/r-notebook:2023-11-19

RUN conda install --quiet --yes r-tidyverse=1.3.0 r-ggplot2=3.3.3 && \
    conda clean --all -f -y

CMD ["start-notebook.sh"]
