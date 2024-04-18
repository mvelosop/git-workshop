echo
echo "Improve table"
echo "-------------"
echo
echo "In this step, we'll improve the catalog listing to use a table format."
echo "We'll make this change in the improve-table branch."
echo "                              -------------"
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
run-app.sh
