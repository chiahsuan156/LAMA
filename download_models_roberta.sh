#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#

set -e
set -u

ROOD_DIR="$(realpath $(dirname "$0"))"
DST_DIR="$ROOD_DIR/pre-trained_language_models"

mkdir -p "$DST_DIR"
cd "$DST_DIR"



echo "ROBERTA BASE"
if [[ ! -f roberta/roberta.base/model.pt ]]; then
  mkdir -p 'roberta'
  cd roberta

  #roberta
  wget -c https://dl.fbaipublicfiles.com/fairseq/models/roberta.base.tar.gz
  tar -xzf roberta.base.tar.gz
  rm roberta.base.tar.gz
  cd roberta.base
  cd ../../
fi



