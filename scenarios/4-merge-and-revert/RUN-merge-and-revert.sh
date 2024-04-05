# Create initial version
../1-initial/RUN-initial.sh

# Pause to check the initial version
echo
echo "Explore the Initial version"
echo
read -p "Press enter to continue..."

# Add catalog title
../2-add-catalog-title/add-catalog-title.sh

# Pause to check the add-catalog-title version
echo
echo "Explore the add-catalog-title version"
echo
read -p "Press enter to continue..."

# Improve table from main
../3-improve-table/improve-table.sh

# Pause to check the improve-table version
echo
echo "Explore the improve-table version"
echo
read -p "Press enter to continue..."

# Merge to main
git checkout main
git merge improve-table --no-ff -m "Merge branch 'improve-table'"

echo 
echo "Merge main with add-catalog-title..."
echo "------------------------------------"
echo

# Go back to add-catalog-title branch
git checkout add-catalog-title

# Update branch with main
git merge main --no-ff -m "Merge branch 'main' into add-catalog-title"

# Run the project
run-app.sh

# Pause to check the merge
echo
echo "Explore the merge main with add-catalog-title"
echo
read -p "Press enter to continue..."

# Revert merge
echo
echo "... and now revert the merge"
echo "----------------------------"
echo

# revert merge
git revert HEAD -m 1 --no-edit

# Run the project
run-app.sh

# Pause to check the revert
echo
echo "Explore the revert merge"
echo
read -p "Press enter to continue..."

echo
echo "Update the data in main"
echo "-----------------------"
echo

# Go back to main
git checkout main

# Update title
code.sh merge-and-revert

# Commit changes
git add .
git commit -m "Update data"

# Run the project
run-app.sh

# Pause to check the update
echo
echo "Explore the data update in main"
echo
read -p "Press enter to continue..."

echo
echo "Merge all changes into main"
echo "---------------------------"
echo

# Go back to the add-catalog-title branch
git checkout add-catalog-title

# Update branch with main
git merge main --no-ff -m "Merge branch 'main' into add-catalog-title"

# Go back to main
git checkout main

## Merge add-catalog-title with revert
git merge add-catalog-title --no-ff -m "Merge branch 'add-catalog-title'"

# Run the project
run-app.sh

# Pause to check the final version
echo
echo "Explore the final version"
echo


