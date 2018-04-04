# Install SougouPinYing
# After download the deb
sudo apt remove fcitx*
sudo apt autoremove
# Then click the deb and finish install

# GPU Driver installation
# find the proper version for your GPU (my GPU is GTX1060, select the version 384.98)
# note that the disable security boot should be selected
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install nvidia-384 nvidia-settings
nvidia-smi

# Install Chrome
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/   # if can't find,change another source
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -    # continue if showok
sudo apt-get update
sudo apt-get install google-chrome-stable
/usr/bin/google-chrome-stable # show the chrome

# remove firefox in ubuntu
sudo apt --purge remove firefox*

# Cuda Installation,make sure you have downloaded it
sudo sh cuda_8.0.44_linux.run
# click yes except Nvidia-driver installation
sudo gedit ~/.bashrc # open this file
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
source ~/.bahsrc
cat /usr/local/cuda/version.txt # check cuda version
cd /usr/local/cuda-8.0/samples/1_Utilities/deviceQuery
sudo make
sudo ./deviceQuery # test

# Install cudnn6.0
# this version is good for cuda8.0
# after decompression, a dir named cuda in cudnn package should be seen
cd cuda
sudo cp include/cudnn.h /usr/local/cuda/include/
sudo cp lib64/lib* /usr/local/cuda/lib64/
cd /usr/local/cuda/lib64/
sudo rm -rf libcudnn.so libcudnn.so.6    # delete original dynamic file
sudo ln -s libcudnn.so.6.0.21 libcudnn.so.6  # soft link
sudo ln -s libcudnn.so.6 libcudnn.so      # soft link
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2 # check cudnn version

# Install pip
# For Python 3
sudo apt-get install python3-pip
# For Python 2
sudo apt-get install python-pip

#Install tensorflow,make sure you have downloaded the wheel
sudo pip(3) install tensorflow...
# If Error show:Cound't load cudlab....
sudo ldconfig /usr/local/cuda/lib64

# opencv3.2 Installation
# this is a key process, many wierd problems can be seen
# first download the package from opencv.org, decompress it at no matter where you want
cd opencv-3.2.0 # up to your own path
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j8 # parallel compiled, up to your own cpu condition
sudo make install # install opencv
pkg-config --modversion opencv # check opencv version
# install opencv interface for python3
sudo pip3 install opencv_python
# install opencv interface for python
sudo pip install opencv_python

#Install Latex
sudo apt-get install texlive-full  
sudo apt-get install texmaker  #Ide,you can choose another
sudo apt-get install latex-cjk-all
