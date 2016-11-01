FROM openjdk:8

RUN ln -sf /bin/bash /bin/sh # make bash the default shell (dash is used before)

# -zip: to package and compress artefacts (zip files are easier to open on windows)
# -docker.io: to build and publish docker images
RUN apt-get update && apt-get install -y \
      zip \
      docker.io \
    && rm -rf /var/lib/apt/lists/*
