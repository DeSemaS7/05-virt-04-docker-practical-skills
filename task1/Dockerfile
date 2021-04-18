FROM archlinux:latest
# TEMP-FIX for pacman issue
RUN patched_glibc=glibc-linux4-2.33-4-x86_64.pkg.tar.zst \
    && curl -LO "https://raw.githubusercontent.com/sickcodes/Docker-OSX/master/${patched_glibc}" \
    && bsdtar -C / -xvf "${patched_glibc}" || echo "Everything is fine."
#RUN pacman-db-upgrade
#RUN pacman -Syyu --noconfirm
RUN pacman -Sy --noconfirm ponysay
ENTRYPOINT ["/usr/bin/ponysay"]
CMD ["Hey, Netology"]
