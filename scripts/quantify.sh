#!/usr/bin/env bash

source $(dirname ${BASH_SOURCE[0]})/setenv.sh

llamafactory-cli export \
  --model_name_or_path $1 \
  --adapter_name_or_path $2 \
  --export_dir $3 \
  --trust_remote_code

llamafactory-cli export \
  --model_name_or_path $1 \
  --adapter_name_or_path $2 \
  --export_dir $3-gptq \
  --quantization_method gptq \
  --quantization_bit 4 \
  --trust_remote_code

llamafactory-cli export \
  --model_name_or_path $1 \
  --adapter_name_or_path $2 \
  --export_dir $3-awq \
  --quantization_method awq \
  --quantization_bit 4 \
  --trust_remote_code