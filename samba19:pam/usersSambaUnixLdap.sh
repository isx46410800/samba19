for user in user{01..05}
do
	mkdir -p /tmp/home/1asix/$user && echo "directori home creat"
	cp -a /etc/skel/\. /tmp/home/1asix/$user && echo "skel copiado"
	chown -R $user $user /tmp/home/1asix/$user && echo "chown ok"
	echo -e "jupiter\njupiter" | smbpasswd -a $user && echo "usuari $user creat"
done

for user in user{06..10}
do
        mkdir -p /tmp/home/2asix/$user && echo "directori home creat"
        cp -a /etc/skel/\. /tmp/home/2asix/$user && echo "skel copiado"
        chown -R $user $user /tmp/home/2asix/$user && echo "chown ok"
	echo -e "jupiter\njupiter" | smbpasswd -a $user && echo "usuari $user creat"
done

