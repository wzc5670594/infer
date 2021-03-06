#!/bin/bash

# Copyright (c) 2016 - present Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.


# refmt with infer options

set -e
set -o pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

refmt \
  -assume-explicit-arity \
  -print-width 100 \
  -heuristics-file "$SCRIPT_DIR/unary.txt" \
  "$@"
