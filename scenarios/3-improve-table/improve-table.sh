echo
echo "Improve table"
echo "============="
echo

# Start from main
git checkout main

# Create a new branch
git checkout -b improve-table

# Add library catalog
code.sh improve-table

# Commit changes
git add .
git commit -m "Improve table"

# Run the project
npm start
