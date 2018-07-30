FROM ballerina/ballerina-platform
WORKDIR /tmp/
COPY hello.bal .
RUN ballerina build hello.bal -o hello.balx

FROM ballerina/ballerina
WORKDIR /home/ballerina
COPY --from=0 /tmp/hello.balx .
CMD ballerina run hello.balx
