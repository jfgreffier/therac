FROM alpine as build

WORKDIR /
RUN apk update && apk add gcc libc-dev ncurses-dev
COPY therac.c .
RUN gcc -o therac therac.c -lcurses

FROM alpine
RUN apk update && apk add ncurses
COPY --from=build therac .
CMD ["./therac"]
