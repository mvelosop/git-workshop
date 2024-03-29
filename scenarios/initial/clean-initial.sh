# Remove all files and folders except the .sh files
rm -rf .git
rm -rf node_modules

find . -type f | grep -v "\.sh$" | xargs rm
