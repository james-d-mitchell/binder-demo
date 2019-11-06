FROM gapsystem/gap-docker

MAINTAINER J. D. Mitchell <jdm3@st-andrews.ac.uk>

COPY --chown=1000:1000 . $HOME/binder-demo

RUN sudo pip3 install ipywidgets RISE

RUN jupyter-nbextension install rise --user --py

RUN jupyter-nbextension enable rise --user --py

USER gap

WORKDIR $HOME/binder-demo
