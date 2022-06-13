#!/bin/bash

set -e
set -x

ROOT=$(cd $(dirname "${BASH_SOURCE}")/..; pwd)
PACKDIR=$ROOT/_pack

mkdir -p ${PACKDIR}
pushd ${ROOT}

# copy file
copy_file_to_dir(){
	target_dir=$1
	mkdir -p $target_dir
	rsync -v -r --exclude="_pack" --exclude="out" \
	--exclude=".git" . $target_dir 
}


# pack dir
pack_dev() {
	echo "111"
}

copy_file_to_dir $PACKDIR
pack_dev
popd
