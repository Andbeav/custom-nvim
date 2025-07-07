# Args
ARG SHARED_PACKAGES="build-base git fd ripgrep neovim neovim-doc"

# Neovim config
FROM scratch as configure

COPY config /root/.config/nvim

# Rust
FROM rust:alpine3.22 as rust

ARG SHARED_PACKAGES

RUN apk update && apk add ${SHARED_PACKAGES}
RUN rustup toolchain install stable

COPY --from=configure /root/.config/ /root/.config/

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /wd

ENTRYPOINT [ "/bin/sh" ]

# Ruby
FROM ruby:3.4.4-alpine3.22 as ruby

ARG SHARED_PACKAGES

RUN apk update && apk add ${SHARED_PACKAGES}
RUN gem install bundler

COPY --from=configure /root/.config/ /root/.config/

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /wd

ENTRYPOINT [ "/bin/sh" ]