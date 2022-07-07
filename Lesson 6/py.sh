#!/bin/bash

exec 1>py_scripts
exec 2>py_errors

find / -name "*.py"

