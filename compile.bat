rem Checkout pip requirements
python -m venv venv
.\venv\Scrits\pip install -r requirements.txt

setlocal EnableDelayedExpansion

rem Remove the 'stubs' directory if it exists, and create a new one
if exist api (
    rd /s /q api
)
mkdir api

rem Base directory to start the search
set baseDir=src\main\proto

rem Find all .proto files in the specified directory and subdirectories
set "protoFiles="
for /r %baseDir% %%f in (*.proto) do (
    rem Get the relative path from the base directory
    set "relativePath=%%f"
    set "relativePath=!relativePath:%CD%\=!"
    set "protoFiles=!protoFiles! !relativePath!"
)

rem Run the grpc_tools.protoc command
.\venv\Scripts\python -m grpc_tools.protoc ^
   --python_out=api ^
   --grpc_python_out=api ^
   --proto_path=%baseDir% ^
   --plugin=protoc-gen-mypy=.\venv\Scripts\protoc-gen-mypy ^
   --mypy_out=api ^
   --experimental_allow_proto3_optional ^
   !protoFiles!

rem Invoke protol to fix broken imports
.\venv\Scripts\protol ^
  --create-package ^
  --in-place ^
  --python-out api ^
  protoc --proto-path=%baseDir% !protoFiles! --experimental_allow_proto3_optional

endlocal
