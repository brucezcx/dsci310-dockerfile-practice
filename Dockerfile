FROM quay.io/jupyter/r-notebook:2023-11-19

RUN conda install --quiet --yes \
    'r-some-package=1.2.3' \
    'r-another-package=2.3.4'

RUN conda clean --all -f -y

CMD ["start-notebook.sh"]
