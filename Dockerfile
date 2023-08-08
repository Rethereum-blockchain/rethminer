FROM nvidia/cuda:11.7.1-devel-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -qy git cmake mesa-common-dev libidn11-dev python3-requests python3-git
COPY . .
RUN git submodule update --init --recursive
RUN cmake -DHUNTER_JOBS_NUMBER=16 -DETHASHCUDA=ON -DETHASHCL=OFF -DAPICORE=ON -H. -Bbuild
RUN cmake --build build -- -j16