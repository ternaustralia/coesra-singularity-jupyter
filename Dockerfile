FROM jupyter/scipy-notebook:x86_64-python-3.10.11

# install additional packages
# downgrade scikit-learn for eli5 to work
RUN mamba install --yes scrapy eli5 pipenv scikit-learn==1.2.0
RUN pip3 install bob structure
