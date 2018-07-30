FROM ballerina/ballerina-platform
WORKDIR /home/ballerina
COPY . .
ballerina build hello.bal

FROM ballerina/ballerina
COPY --from=0 /home/ballerina/hello.balx .
