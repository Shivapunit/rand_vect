#!/bin/bash

# Run the tests
pytest

# Check the exit code of the pytest command
if [ $? -eq 0 ]; then
    # Tests passed, start the app server
    gunicorn -c server_config.py app0:app
else
    # Tests failed, display an error message
    echo "Tests failed. App server not started."
    exit 1
fi

