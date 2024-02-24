# stargazer-plot
Visualization of project popularity

Produce an example plot by building and running the container.

```bash
docker build -t stargazer-plot .
docker run --rm -v "$(pwd)/output":/output stargazer-plot:latest
```

Obtain real data from the GitHub API.

```bash
organization="schemaspy"
repository="schemaspy"

curl "https://api.github.com/repos/${organization}/${repository}/stargazers?per_page=100&page=1" \
-H 'Accept: application/vnd.github.v3.star+json'
```
