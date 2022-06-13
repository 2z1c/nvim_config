#!/bin/bash
set -x
LOG="/var/tmp/nvim_config_upgrade.log"
PKG_SRC_FILE=$0
# 升级前清空一下日志
> $LOG

_print_log()
{
	local msg="["`date`"] ${1}"
	echo "$msg" >> $LOG
}

unzip_dev() {
	local unzip_dir=$1

	# 缺省配置是单独的目录，不会覆盖原有配置，所以可以全部解压。
	sed '1,/^#__END__$/d' "${PKG_SRC_FILE}" | tar xzf - --dereference -C ${unzip_dir}/
	if [ $? -ne 0 ]; then
		_print_log "Vpn tar package failed"
		exit 1
	fi
}

_unpack_dir=/home/zcz/.config/nvim_config
mkdir -p $_unpack_dir
unzip_dev $_unpack_dir

exit 0
#__END__

