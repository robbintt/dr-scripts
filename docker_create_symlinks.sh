#if [ $# -lt 1 ]; then
#  echo "Usage: ./create_symlinks.sh path/to/lich/scripts"
#  exit 1
#fi
#destination=$1
destination=../lich/scripts

# NOTE: this requires gnutools on macos homebrew

# Delete all symlinks from lich/scripts
find $destination -maxdepth 1 -type l -exec rm -f {} \;

# Link all the things
ln -rs *.lic $destination
ln -rs profiles $destination/profiles
ln -rs data $destination/data
