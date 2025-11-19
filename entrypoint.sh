#!/bin/bash
echo "Current user: $(whoami)"
free -h 
exec "$@"