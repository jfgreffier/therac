FROM alpine

WORKDIR /
RUN apk update && apk add gcc libc-dev ncurses-dev
COPY therac.c .
RUN gcc -o therac therac.c -lcurses
CMD ["./therac"]
