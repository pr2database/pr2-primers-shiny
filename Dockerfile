# Date 2026-02-21

# Base image https://hub.docker.com/u/rocker/
FROM rocker/shiny:4.4

# install directly the packages

RUN install2.r --error --skipinstalled \
    shiny \
    shinyFeedback \
    shinycssloaders \
    markdown \
    dplyr \
    stringr \
    forcats \
    here \
    rio \
    qs2 \
    patchwork \
    BiocManager \
    pryr

RUN R -e "BiocManager::install('Biostrings',ask=F)"

RUN install2.r --error --skipinstalled \
    tidyr \
    DT

# For testing
# CMD Rscript R/test.R

COPY shiny-customized.config /etc/shiny-server/shiny-server.conf

WORKDIR /srv/shiny-server

# copy necessary files

COPY *.md ./
COPY *.R ./
COPY /www  ./www
COPY /data  ./data
COPY /inst ./inst
COPY /R  ./R

# expose port

EXPOSE 8080

USER shiny

# avoid s6 initialization
# see https://github.com/rocker-org/shiny/issues/79

# The next line prevents the application to start on Google
# CMD ["R", "-e", "shiny::runApp(port = 8080)"]

# Better to use
CMD ["/usr/bin/shiny-server"]
