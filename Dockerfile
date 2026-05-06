FROM adoptopenjdk/openjdk8:alpine

LABEL org.opencontainers.image.authors="Claudius Teodorescu <claudius.teodorescu@gmail.com>"

ARG COLLATEX_VERSION=1.7.1

COPY ./lib/collatex-tools-$COLLATEX_VERSION.jar collatex-tools.jar

EXPOSE 7369

RUN ls -l

ENTRYPOINT ["java", "-jar", "/collatex-tools.jar", "--http"]



# sudo docker build -t collatex-container .
# sudo docker run -a stderr collatex-container:latest
