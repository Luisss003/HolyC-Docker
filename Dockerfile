FROM gcc:latest
WORKDIR /usr/src/app
COPY . .
RUN make && make install && make unit-test