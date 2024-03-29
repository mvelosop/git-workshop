# Initialize git repository
git init

# Create a .gitignore file
echo "node_modules" > .gitignore
echo "*.sh" >> .gitignore
echo ".DS_Store" >> .gitignore

# code initial version
code.sh initial

# insrall dependencies
pnpm install