import argparse
import sys
import os
import logging
import tempfile

parser = argparse.ArgumentParser()

def initParser(par):
    par.add_argument('--pack', type=str, help='display this messgae') 
    par.add_argument('--packdir', type=str, help='need pack dir', default = os.getenv('__rootdir'))
    par.add_argument('--unpackdir', type=str, help='unpack dir',default = tempfile.TemporaryDirectory())

def execParser(args):
    print(args.packdir)

def checkvalue():
    if not os.getenv("__rootdir"):
        logging.warning("need use pach bash script")
        exit(1)

def main():
    checkvalue()
    initParser(parser)
    args = parser.parse_args()
    execParser(args)

main()
