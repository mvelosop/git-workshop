echo 
echo "Add catalog title"
echo "-----------------"
echo

# Start from main
git checkout main

# Create a new branch
git checkout -b add-catalog-title

# Add library title
code.sh add-catalog-title

# Commit changes
git add .
git commit -m "Add catalog title"

# Run the project
run-app.sh
