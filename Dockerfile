FROM bioconductor/bioconductor_docker:devel

# Additional R packages 
ADD install_pkgs.R /tmp/

RUN R -f /tmp/install_pkgs.R

# init 
CMD ["/init"]
