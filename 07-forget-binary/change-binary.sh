#!/bin/bash

dd if=/dev/zero of=test.img bs=2048 count=0 seek=2048
git status
