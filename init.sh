#!/bin/bash

if ! command -v go &> /dev/null
then
    echo Installing task...
    sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ~/.local/bin
fi

echo "task" is installed. Run "task all" to run all the tasks
