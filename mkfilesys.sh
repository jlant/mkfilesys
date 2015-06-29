#!/bin/bash

# Name:
#   mkfilesys.sh -- make a user specific file system
#
# Usage:
#   mkfilesys.sh DIRECTORY_NAME | [-h]
#
# Description:
#   The mkfilesys script makes a user specific file system tree.
#
# Example:
#   mkfilesys.sh ~/jeremiah

# make the file system
mk_dirs()
{

mkdir -p $1/\
{\
archive,\
bin,\
data/{yyyy-mm-dd-topic-source,samples},\
inbox,\
multimedia/{pictures,videos},\
projects/{yyyy-topic-location,code-proj-name},\
software,\
tmp,\
learning/{books,courses/yyyy-mm-dd-topic-source,docs,papers,tutorials/yyyy-mm-dd-topic-source},\
groups/{scientific-computing-group,software-carpentry},\
me/{code-snippets,docs,notes,papers,playground,presentations,templates},\
work/{admin,conferences/yyyy-mm-dd-topic-name-location,docs,human-resources,meetings/yyyy-mm-dd-topic-location,people,training/yyyy-mm-dd-topic-name-location}\
}

}

# show how to use this script
usage()
{
    echo "usage: $0 DIRECTORY_NAME | [-h | --help]"
}

# check arguments - if no arguments, then display help; elif help flags, then display help; else make directories 
if [ ${#@} == 0 ]; then
    usage
    exit
elif [[ "$1" == "-h"  ||  "$1" == "--help" ]]; then
    usage
    exit
else
    echo "Making directory structure at: $1"
    mk_dirs $1
fi
