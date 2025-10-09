FROM quay.io/toolbx/arch-toolbox:latest

RUN echo export TYPST_FONT_PATHS=/usr/share/fonts >> /etc/profile.d/toolbox-config.sh

RUN pacman -Sy --noconfirm \
	    typst \
	    otf-font-awesome \
	    ttf-roboto \
	    adobe-source-sans-fonts

RUN echo "en_CA.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen
