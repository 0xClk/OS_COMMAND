#!/bin/sh
# Start the Flask application
: ${FILE_NAME:=main.py}  # Default to main.py if FILE_NAME is not set
exec python3 $FILE_NAME
