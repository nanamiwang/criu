#!/bin/bash
cd /dump && /criu/criu/criu restore -v4 --shell-job --tcp-established -d
