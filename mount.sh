#!/bin/bash
set -x
sshfs -o ssh_command="ssh -i $PWD/insecure_private_key" vagrant@assets.ohl:. test
