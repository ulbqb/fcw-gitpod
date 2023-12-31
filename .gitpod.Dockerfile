FROM gitpod/workspace-full

USER root
RUN rustup toolchain install 1.69.0
RUN rustup default 1.69.0
RUN rustup target add wasm32-unknown-unknown
RUN rustup default 1.73.0
RUN cargo install cosmwasm-check
RUN cargo install cargo-generate
RUN rustup default 1.69.0

RUN wget -O /usr/local/bin/fnsad https://github.com/Finschia/finschia/releases/download/v2.0.1/fnsad-2.0.1-linux-amd64
RUN chmod 755 /usr/local/bin/fnsad

WORKDIR /workspace
