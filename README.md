# stargazer-plot
Visualization of project popularity

```bash
organization="schemaspy"
repository="schemaspy"

curl "https://api.github.com/repos/${organization}/${repository}/stargazers?per_page=100&page=1" \
-H 'Accept: application/vnd.github.v3.star+json'
```
