#if [ $# -lt 1 ]; then
#  echo "Usage: ./create_symlinks.sh path/to/lich/scripts"
#  exit 1
#fi
#destination=$1
destination=../lich/scripts

# NOTE: this requires gnutools on macos homebrew

# Delete all symlinks from lich/scripts
gfind $destination -maxdepth 1 -type l -exec rm -f {} \;

# Link all the things
gln -rs *.lic $destination
gln -rs profiles $destination/profiles
gln -rs data $destination/data
