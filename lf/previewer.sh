#!/bin/sh
case $(file --mime-type -Lb "$1") in
  application/x-executable) hexdump -C "$1" | head -n 100 | bat --color always;;
  *) bat --color always "$1"
esac
