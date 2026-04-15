git rm --cached 08-demo-rebase
rm -rf .git/modules/08-demo-rebase
# For a clean removal, update .gitmodules

# Change in .gitmodules:
# [submodule "08-demo-rebase"]
# 	path = 08-demo-rebase
# 	url = <submodule-url>

# Don't forget to commit changes

# Final commit to apply changes:
# git commit -m "Fix: remove 08-demo-rebase submodule"