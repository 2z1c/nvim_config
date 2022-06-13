#!/bin/bash

set -e
set -x

ROOT=$(cd $(dirname "${BASH_SOURCE}")/..; pwd)
PACKDIR=$ROOT/_pack
OUTDIR=$ROOT/out
packname=nvim_config
mkdir -p ${PACKDIR} ${OUTDIR}
pushd ${ROOT}


# copy file
copy_file_to_dir(){
	target_dir=$1
	mkdir -p $target_dir
	rsync -v -r --exclude="_pack" --exclude="out" \
	--exclude=".git" . $target_dir 
	( cd ${PACKDIR} && tar -czf ${OUTDIR}/$packname.tar.gz  *)
}


# pack dir
pack_dev() {
	cat hack/upgrade.sh > ${OUTDIR}/$packname.dev
	cat ${OUTDIR}/$packname.tar.gz >> ${OUTDIR}/$packname.dev
	chmod +x ${OUTDIR}/$packname.dev
}

copy_file_to_dir $PACKDIR
pack_dev
popd
