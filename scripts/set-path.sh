# Add the current path to the beginning of the PATH variable
# Usage:
#   cd <THIS DIRECTORY (scripts)>
#   source set-path.sh 

echo
echo "Adding $PWD to PATH variable"
echo

export PATH=$PWD:$PATH
