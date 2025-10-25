FROM quay.io/toolbx/arch-toolbox:latest

COPY packages.txt /tmp/packages.txt
RUN pacman -Sy --noconfirm && \
    cat /tmp/packages.txt | xargs pacman -S --noconfirm && \
    pacman -S --clean --clean && \
    rm /tmp/packages.txt

RUN echo "en_CA.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
