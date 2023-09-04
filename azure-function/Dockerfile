FROM rust:1.68 AS builder
COPY . .
RUN cargo build --release 

FROM debian:buster-slim as runner
COPY --from=builder /target/ ./target/
CMD ["/target/release/docker"]