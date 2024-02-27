# stargazer-plot
Visualization of project popularity

Obtain real data from the GitHub API.

```bash
organization="schemaspy"
repository="schemaspy"

echo "Timestamp" > data.csv && \
curl "https://api.github.com/repos/${organization}/${repository}/stargazers?per_page=100&page=1" \
-H 'Accept: application/vnd.github.v3.star+json' \
| jq .[].starred_at >> data.csv
```

Then build and run the container.

```bash
docker build -t stargazer-plot .
docker run --rm -v "$(pwd)/data.csv":. -v "$(pwd)/output":/output stargazer-plot:latest
```
