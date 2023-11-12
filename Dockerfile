FROM amd64/debian:bullseye AS builder

COPY setup.sh /app/setup.sh

FROM arm64v8/debian:bullseye

COPY --from=builder /app/setup.sh /app/setup.sh

