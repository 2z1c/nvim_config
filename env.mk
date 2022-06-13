export TOP := $(abspath $(abspath $(dir $(lastword $(MAKEFILE_LIST)))))

export PACK_TOP ?= $(TOP)/_pack
export TARGET_DIR := $(TOP)/out




