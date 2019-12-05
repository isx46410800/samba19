#! /bin/bash
# @edt ASIX M06 2019-2020
# startup.sh
# -------------------------------------
#instalacio / preparacio
/opt/docker/install.sh && echo "Install Ok"

# activar els serveis ldap
/sbin/nscd && echo "nscd Ok"
/sbin/nslcd && echo "nslcd Ok"

# activar els serveis samba
/usr/sbin/smbd && echo "smb Ok"

# creacion de users samba dels users ldap, creando sus cuentas y directorios
bash /opt/docker/usersSambaUnixLdap.sh

# servei per a detached
/usr/sbin/nmbd -F

