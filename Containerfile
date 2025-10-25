FROM quay.io/toolbx/arch-toolbox:latest

RUN pacman -Sy --noconfirm \
	    neovim \
	    typst \
	    otf-font-awesome \
	    ttf-roboto \
	    adobe-source-sans-fonts \
	    && pacman -S --clean --clean

RUN echo "en_CA.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
