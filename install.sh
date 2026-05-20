# Author arthurkiller
# email arthur-lee@qq.com
# data 2017-1-4
# this shell is used for initialize the tmux-config

#!/bin/bash

set -e

trap exit ERR

if [ -d $HOME/.tmux  ]
then
    echo .tmux already exist
    mv $HOME/.tmux $HOME/.tmux.bak
fi

if [ -e $HOME/.tmux.conf  ]
then
    echo .tmux.conf already exist
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi

cp -r $HOME/tmux-config $HOME/.tmux
ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf

cd ~/.tmux && git submodule init && git submodule update

cd ~/.tmux/vendor/tmux-mem-cpu-load && cmake . && make && sudo make install

# Compile and install showmydisk
cd ~/.tmux/vendor/showmydisk
if [ -f Makefile ]; then
    make
    sudo make install
else
    # If submodule not initialized, clone directly
    git clone https://github.com/touchao123/showmydisk.git /tmp/showmydisk
    cd /tmp/showmydisk
    make
    sudo make install
    rm -rf /tmp/showmydisk
fi

tmux source-file ~/.tmux.conf

echo ""
echo "============================================"
echo "  tmux-config 安装完成!"
echo "  磁盘监控: showmydisk (已安装)"
echo "  内存监控: tmux-mem-cpu-load (已安装)"
echo "============================================"
