# Version: 0.0.1
# @edt M06 2019-2020
# samba
# -------------------------------------
FROM fedora:27
LABEL author="Miguel Amoros"
LABEL description="SAMBA server 2019-2020 - PAM"
RUN dnf -y install procps samba samba-client nss-pam-ldapd cifs-utils passwd pam_mount authconfig
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]

