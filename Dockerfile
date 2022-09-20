FROM maven:3.6.2-jdk-8
WORKDIR /thumb
COPY . .
WORKDIR /thumb/imageio-extensions
RUN mvn install
WORKDIR /thumb/app
RUN mvn verify
RUN cp thumbnail.sh target/thumbnail.sh
ENTRYPOINT [ "/bin/bash" ]
