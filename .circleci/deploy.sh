git config --global user.email ${GITHUB_USER_EMAIL}
git config --global user.name ${GITHUB_USER_NAME}
git add -A
git commit ./docs/* -m "Update schemaSpy html [ci skip]"
git push git@github.com:su-kun1899/schemaspy-plugin-sample.git $CIRCLE_BRANCH