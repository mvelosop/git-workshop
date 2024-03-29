# Initialize git repository
git init

# Create a .gitignore file
echo "node_modules" > .gitignore
echo "*.sh" >> .gitignore
echo ".DS_Store" >> .gitignore

# Code initial version
code.sh initial

# Install dependencies
pnpm install

# Commit initial version
git add .
git commit -m "Initial version"

# Run the project
npm start
