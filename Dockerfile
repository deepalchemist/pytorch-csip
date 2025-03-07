#FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-devel

#RUN apt-get update && apt-get install -y libgl1-mesa-glx libpci-dev curl nano psmisc zip git && apt-get --fix-broken install -y

#RUN conda install -y scikit-learn pandas flake8 yapf isort yacs future libgcc

#RUN pip install --upgrade pip && python -m pip install --upgrade setuptools && \
#    pip install opencv-python tb-nightly matplotlib logger_tt tabulate tqdm wheel mccabe scipy

#COPY ./fonts/* /opt/conda/lib/python3.10/site-packages/matplotlib/mpl-data/fonts/ttf/

FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-runtime

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
