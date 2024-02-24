FROM rocker/tidyverse
COPY script.R .
CMD ["Rscript", "script.R"]
