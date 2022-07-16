FROM gitpod/workspace-full:latest

RUN bash -c 'VERSION="16.16.0" \
    && source $HOME/.nvm/nvm.sh && nvm install $VERSION \
    && nvm use $VERSION && nvm alias default $VERSION'

RUN git clone \
  --recurse-submodules \
  https://github.com/input-output-hk/cardano-js-sdk.git \
  && cd cardano-js-sdk
