FROM rust:1.68 AS builder
COPY . .
RUN cargo build --release 

FROM debian:buster-slim as runner
COPY --from=builder /target/ ./target/
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE 8080
CMD ["/target/release/azure-function"]