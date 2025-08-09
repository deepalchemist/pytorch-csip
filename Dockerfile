docker run -it --rm --gpus=all pengchuanzhang/pytorch:ubuntu20.04_torch1.9-cuda11.3-nccl2.9.9 /bin/bash

#FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-runtime

RUN apt-get update 
RUN apt-get install -y libgl1-mesa-glx 
RUN apt-get install -y libpci-dev 
RUN apt-get install -y curl 
RUN apt-get install -y nano 
RUN apt-get install -y psmisc 
RUN apt-get install -y zip 
RUN apt-get install -y git
RUN apt-get install -y vim 
RUN apt-get install -y iputils-ping

# Conda
RUN conda install -y faiss-gpu scikit-learn pandas flake8 yapf isort yacs gdown future libgcc -c conda-forge

# PIP
RUN  apt-get --fix-broken install -y && pip install opencv-python tb-nightly matplotlib logger_tt tabulate tqdm wheel mccabe scipy

COPY ./fonts/* /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/fonts/ttf/
