#!/usr/bin/env bash
# finds all instances of a given tag in the _posts dir
# if you don't pass in an arg, it shows all tags

grep "^tags.*$1" _posts/*
