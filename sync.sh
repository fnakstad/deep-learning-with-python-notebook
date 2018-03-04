#!/bin/bash

rsync -rave "ssh -i $1" -a  ./ $2:~/sandbox --exclude venv
