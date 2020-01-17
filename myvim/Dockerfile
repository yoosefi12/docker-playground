FROM scala:2.13.1


RUN apt-get update && apt install -y  libncurses5-dev libgnome2-dev libgnomeui-dev \
	libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
	libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
	python3-dev ruby-dev lua5.1 liblua5.1-dev libperl-dev git

RUN cd ~ && git clone https://github.com/vim/vim.git
RUN cd ~/vim && ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local \
	make VIMRUNTIMEDIR=/usr/local/share/vim/vim82


RUN cd ~/vim && make install

RUN update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
RUN update-alternatives --set editor /usr/local/bin/vim
RUN update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
RUN update-alternatives --set vi /usr/local/bin/vim

CMD ["/bin/bash"]
