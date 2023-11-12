FROM amd64/debian:bullseye AS builder

COPY . /src

FROM arm64v8/debian:bullseye

COPY --from=builder ./src ./src

RUN ./src/setup.sh

CMD ["./src/setup.sh"]

