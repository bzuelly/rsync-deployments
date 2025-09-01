# drinternet/rsync@v1.4.4
#FROM drinternet/rsync@sha256:15b2949838074bd93c49421c22380396a0cd53a322439e799ac87afcadcfe234
FROM rockylinux/rockylinux:9

# always force-upgrade rsync to get the latest security fixes
RUN echo "Bryan's dockerfile"
RUN dnf update -y
RUN dnf install -y rsync openssh

# Copy entrypoint
##COPY entrypoint.sh /entrypoint.sh
##RUN chmod +x /entrypoint.sh

##ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
