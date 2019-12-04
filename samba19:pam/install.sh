#! /bin/bash
# @edt ASIX M06 2019-2020
# instal.lacio
# -------------------------------------

# creacio usuaris locals
useradd local1
useradd local2
useradd local3
echo "local1" | passwd --stdin local1
echo "local2" | passwd --stdin local2
echo "local3" | passwd --stdin local3

# Configuració client autenticació ldap
bash /opt/docker/auth.sh

# SAMBA
## Configuracio shares Samba
mkdir /var/lib/samba/public
chmod 777 /var/lib/samba/public
cp /opt/docker/* /var/lib/samba/public/.

mkdir /var/lib/samba/privat
#chmod 777 /var/lib/samba/privat
cp /opt/docker/*.md /var/lib/samba/privat/.
cp /opt/docker/smb.conf /etc/samba/smb.conf

## creacio usuaris unix locals i samba locals
useradd lila
useradd roc
useradd patipla
useradd pla
echo -e "lila\nlila" | smbpasswd -a lila
echo -e "roc\nroc" | smbpasswd -a roc
echo -e "patipla\npatipla" | smbpasswd -a patipla
echo -e "pla\npla" | smbpasswd -a pla


