FROM quay.io/jupyter/minimal-notebook
ARG DEBIAN_FRONTEND=noninteractive

USER root

# load additional os packages
RUN apt-get update && apt-get install -y \
    build-essential \
    graphviz

USER ${NB_UID}