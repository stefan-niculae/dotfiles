# Languanges & Tools setup
# Uncomment as needed



# Python - locale conflict
# http://stackoverflow.com/questions/19961239/pelican-3-3-pelican-quickstart-error-valueerror-unknown-locale-utf-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Haskell
#export PATH=$HOME/.cabal/bin:${PATH}  # cabal
export PATH=/Library/Haskell/bin:${PATH}
export PATH=$HOME/.local/bin:${PATH}  # stack

# Nvidia - Cuda
#export PATH=/Developer/NVIDIA/CUDA-7.5/bin:${PATH}
#export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/Developer/NVIDIA/

# Java
#export JAVA_HOME=$(/usr/libexec/java_home)

# Android
#export ANDROID_HOME=/usr/local/opt/android-sdk


# Python virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh  # lazy loading
