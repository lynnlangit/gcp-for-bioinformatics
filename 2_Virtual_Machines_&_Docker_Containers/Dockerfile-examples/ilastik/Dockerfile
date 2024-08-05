FROM ubuntu:18.04

ENV MYHOME=/home/user

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    libglu1-mesa-dev \
    qt5-default \
    libgl1-mesa-glx

# Download and extract ilastik
RUN wget https://files.ilastik.org/ilastik-1.3.3post2-Linux.tar.bz2 && \
    tar xjf ilastik-1.*-Linux.tar.bz2 && \
    rm ilastik-1.*-Linux.tar.bz2

# Create user home directory (if not already present)
RUN mkdir -p $MYHOME

# Set working directory
WORKDIR $MYHOME/ilastik-1.*-Linux

# Define the default command to run ilastik
CMD ["./run_ilastik.sh"]