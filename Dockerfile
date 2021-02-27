FROM alpine
RUN apk add --update --no-cache pulseaudio pulseaudio-alsa pulseaudio-utils alsa-lib
EXPOSE 4713/tcp
ENTRYPOINT ["/usr/bin/pulseaudio", "--system", "--disallow-exit", "--disallow-module-loading", "--daemonize=no"]
