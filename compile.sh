#!/bin/bash

echo Checkout pip requirements
python -m venv venv
venv/bin/pip install -r requirements.txt

echo Search for proto files
mapfile -d '' proto_src_files < <(find src/main/proto -name '*.proto' -print0)

echo Remove old api files
rm -rf api
mkdir api

echo Compile proto files
venv/bin/python -m grpc_tools.protoc \
  --python_out=api \
  --grpc_python_out=api \
  --proto_path=src/main/proto \
  --plugin=protoc-gen-mypy=venv/bin/protoc-gen-mypy \
  --mypy_out=api \
  --experimental_allow_proto3_optional \
  "${proto_src_files[@]}"

# invoke proletariat to fix broken imports

echo Fix paths
venv/bin/protol \
  --create-package \
  --in-place \
  --python-out api \
  protoc --proto-path=src/main/proto "${proto_src_files[@]}" --experimental_allow_proto3_optional
