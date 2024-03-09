# stargazer-plot
Visualization of project popularity

![](./example-plot.svg "Fig 1. The SchemaSpy project's stars over time")

Obtain real data from the GitHub API.

```bash
organization="schemaspy"
repository="schemaspy"

echo "Timestamp" > data.csv && \
curl "https://api.github.com/repos/${organization}/${repository}/stargazers?per_page=100&page=1" \
-H 'Accept: application/vnd.github.v3.star+json' \
| jq .[].starred_at >> data.csv
```

Then pull and run the container.

```bash
docker pull jesperolssonse/stargazer-plot
docker run --rm -v "$(pwd)/data.csv":/data.csv -v "$(pwd)/output":/output stargazer-plot:latest
```
