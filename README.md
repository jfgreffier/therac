# Therac
Therac-25 simulator for MIT. Original source code published without license by MIT http://web.mit.edu/6.033/2007/wwwdocs/assignments/handson-therac.html

## Build

```bash
gcc -o therac therac.c -lcurses
```

## Docker usage

```bash
docker build . -t therac
docker run --rm -it therac
```
