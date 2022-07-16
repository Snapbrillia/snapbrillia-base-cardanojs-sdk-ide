FROM gitpod/workspace-base

RUN git clone \
  --recurse-submodules \
  https://github.com/input-output-hk/cardano-js-sdk.git \
  && cd cardano-js-sdk
