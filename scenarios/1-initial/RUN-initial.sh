echo
echo "Initial version"
echo "---------------"
echo
echo "In this step, we'll start a new library project with a simple catalog listing."
echo "We'll make this change in the main branch."
echo "                              ----"
echo

# Initialize git repository
git init

# Create a .gitignore file
echo "node_modules" > .gitignore
echo ".DS_Store" >> .gitignore

# Code initial version
code.sh initial

# Install dependencies
pnpm install

# Commit initial version
git add .
git commit -m "Initial version"

# Run the project
run-app.sh
