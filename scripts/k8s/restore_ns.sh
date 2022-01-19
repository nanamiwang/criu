#!/bin/bash
export PATH=/criu/criu/criu:$PATH
cd /dump && /criu/scripts/criu-ns restore -v4 --shell-job --tcp-established -d
