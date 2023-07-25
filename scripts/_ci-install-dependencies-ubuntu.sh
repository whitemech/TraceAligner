#!/usr/bin/env bash
#
# Copyright 2021-2023 WhiteMech
#
# ------------------------------
#
# This file is part of Trace-Alignment.
#
# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.
#

set -e

echo "Installing CUDD..."
wget https://github.com/whitemech/cudd/releases/download/v3.0.0/cudd_3.0.0_linux-amd64.tar.gz
tar -xf cudd_3.0.0_linux-amd64.tar.gz
cd cudd_3.0.0_linux-amd64
sudo cp -P lib/* /usr/local/lib/
sudo cp -Pr include/* /usr/local/include
cd ..
echo "CUDD installed."

echo "Installing MONA..."
wget https://github.com/whitemech/MONA/releases/download/v1.4-19.dev0/mona_1.4-19.dev0_linux-amd64.tar.gz
tar -xf mona_1.4-19.dev0_linux-amd64.tar.gz
cd mona_1.4-19.dev0_linux-amd64
sudo cp -P lib/* /usr/local/lib/
sudo cp -Pr include/* /usr/local/include
cd ..
echo "MONA installed."

echo "Install Syft+..."
wget https://github.com/whitemech/Syft/releases/download/v0.1.1/syft+-0.1.1_ubuntu-20.04.tar.gz
tar -xf syft+-0.1.1_ubuntu-20.04.tar.gz
cd syft+-0.1.1_ubuntu-20.04
sudo cp -P lib/* /usr/local/lib/
cd ..
echo "Syft+ installed."

echo "Installing Lydia..."
wget https://github.com/whitemech/lydia/releases/download/v0.1.3/lydia
sudo chmod +x lydia
sudo cp -P lydia /usr/local/bin/lydia
echo "Lydia installed."
