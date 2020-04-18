param($ip)

if (!$ip){
     
     echo "IGOR PINHEIRO - PORTSCAN"
     
     echo ".\scan-port.sp1 192.168.0.1"
} else {
$topports = 21,22,25,3306,80,8081,443,3000,30000,500,100,111
try {foreach ($port in $topports){
if (Test-NetConnection $ip -Port $port -WarningAction SilentlyContinue -InformationLevel Quiet) {

    echo "Port Open: $port"
}} else {
    echo "Port Closed: $port"
}} catch{}
}