FROM gcc:latest
WORKDIR /usr/src/app
COPY . .
RUN apt-get update && apt-get install -y cmake make && rm -rf /var/lib/apt/lists/*
RUN make && make install && make unit-test