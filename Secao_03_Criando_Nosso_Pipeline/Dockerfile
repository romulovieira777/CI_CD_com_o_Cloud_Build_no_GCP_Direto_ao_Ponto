FROM gcr.io/cloud-builders/gcloud-slim

# Use ARG so that values can be overridden by user/cloudbuild
ARG TERRAFORM_VERSION=0.12.24
ARG TERRAFORM_VERSION_SHA256SUM=0c
ARG TERRAFORM_VALIDATOR_RELEASE=0.1.1

ENV TERRAFORM_VERSION=$TERRAFORM_VERSION
ENV TERRAFORM_VERSION_SHA256SUM=$TERRAFORM_VERSION_SHA256SUM
ENV TERRAFORM_VALIDATOR_RELEASE=$TERRAFORM_VALIDATOR_RELEASE

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    wget \
    && rm -rf /var/lib/apt/lists/* \

ENV PATH=/builder/terraform/:$PATH
COPY entrypoint.bash /builder/entrypoint.bash
ENTRYPOINT ["/builder/entrypoint.bash"]
