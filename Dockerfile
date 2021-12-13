# Base image https://hub.docker.com/u/rocker/
FROM rocker/shiny-verse

# install directly the packages

RUN install2.r --error --skipinstalled \
    shinyFeedback \
    shinycssloaders \
    markdown \
    here \
    rio \
    patchwork \
    BiocManager \
    pryr

RUN R -e "BiocManager::install('Biostrings',ask=F)"

# For testing
# CMD Rscript R/test.R

COPY shiny-customized.config /etc/shiny-server/shiny-server.conf

WORKDIR /srv/shiny-server

# copy necessary files

COPY *.md ./
COPY *.R ./
COPY /www  ./www
COPY /data  ./data
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
