#!/usr/bin/env bash

#
#  This file is part of Planning-Trace-Alignment.
#
#  Planning-Trace-Alignment is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Lesser General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  Planning-Trace-Alignment is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public License
#  along with Planning-Trace-Alignment.  If not, see <https://www.gnu.org/licenses/>.
#
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
