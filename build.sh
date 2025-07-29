#!/bin/sh

nix build

cp result/resume.pdf .
rm -rf result
