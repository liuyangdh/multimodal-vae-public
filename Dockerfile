FROM continuumio/anaconda3

# set environment variables
ENV DISABLE_CONTRACTS=1

# create environment
RUN conda create -n mvae python=2.7 anaconda
RUN echo "source activate mvae" > ~/.bashrc
ENV PATH /opt/conda/envs/mvae/bin:$PATH
RUN pip install torch torchvision
RUN pip install tqdm
RUN pip install scikit-image
RUN pip install opencv-python
RUN pip install imutils
RUN apt-get update && apt-get -y install protobuf-compiler cmake build-essential libgtk-3-dev libboost-all-dev
RUN pip install dlib



# copy files inside
COPY . /mvae
WORKDIR "mvae"


