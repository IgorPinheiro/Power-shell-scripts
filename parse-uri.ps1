$site = Read-Host "Digite o site: "
if (!$site){
    echo "Parse URI - By: Igor Pinheiro"
    echo "Site não encontrado!"
    echo "Execute novamente e digite o site"
}else{
    try{
    $web = Invoke-WebRequest -uri "$site" -Method Options

    echo "O Servidor Roda: "
    $web.headers.server
    echo ""
    echo "O servidor aceita os metodos: "
    $web.headers.allow
    echo ""
    echo "Links Encontrados"
    $web2 = Invoke-WebRequest -uri "$site"
    $web2.links.href | Select-String http://
    } catch{}
}