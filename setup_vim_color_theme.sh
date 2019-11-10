#!/bin/sh
mkdir -p ~/.vim/colors
git clone --depth 1 https://github.com/NLKNguyen/papercolor-theme.git && \
cp papercolor-theme/colors/* ~/.vim/colors/.
