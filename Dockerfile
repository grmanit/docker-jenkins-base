FROM openjdk:8

RUN ln -sf /bin/bash /bin/sh # make bash the default shell (dash is used before)

RUN apt-get update && apt-get install -y \
      zip \ # to package and compress artefacts (zip files are easier to open on windows)
    && rm -rf /var/lib/apt/lists/*
