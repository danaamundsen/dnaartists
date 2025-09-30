#!/usr/bin/env bash
# finds all instances of a given tag in the _posts dir
# if you don't pass in an arg, it shows all tags

# use -l to make edit lists you can jump to in vim
grep "^tags.*$1" _posts/*
