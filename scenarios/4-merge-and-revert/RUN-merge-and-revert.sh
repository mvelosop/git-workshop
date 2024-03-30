# Create initial version
../1-initial/RUN-initial.sh

# Add catalog title
../2-add-catalog-title/add-catalog-title.sh

# Improve table from main
../3-improve-table/improve-table.sh

# Merge to main
git checkout main
git merge improve-table --no-ff -m "Merge branch 'improve-table'"

echo 
echo "Merge main with add-catalog-title"

# Go back to add-catalog-title branch
git checkout add-catalog-title

# Update branch with main
git merge main --no-ff -m "Merge branch 'main' into add-catalog-title"

# Run the project
npm start

# revert merge
git revert HEAD -m 1 --no-edit

# Go back to main
git checkout main

# Update title
code.sh merge-and-revert

# Commit changes
git add .
git commit -m "Update title"

# Go back to add-catalog-title branch
git checkout add-catalog-title

# Update branch with main
git merge main --no-ff -m "Merge branch 'main' into add-catalog-title"

# Run the project
npm start

# Go back to main
git checkout main

## Merge add-catalog-title with revert
git merge add-catalog-title --no-ff -m "Merge branch 'add-catalog-title'"

# Run the project
npm start

