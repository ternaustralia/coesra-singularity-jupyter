FROM jupyter/scipy-notebook

# install additional packages
# downgrade scikit-learn for eli5 to work
RUN mamba install --yes scrapy eli5 pipenv chainer scikit-learn==1.2.0
RUN pip3 install bob pybrain structure
