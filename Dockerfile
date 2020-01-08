FROM debian:buster

LABEL description="This image provides a valid runtime env for the automatic execution of the code validity checks, required for the course C++ at the University Osnabrück."

RUN apt-get update && \
    apt-get install -y bash astyle git && \
    apt-get install -y doxygen graphviz && \
    apt-get install -y cmake make g++ libsdl2-dev libsdl2-image-dev libgsl-dev && \
    apt-get autoclean && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
