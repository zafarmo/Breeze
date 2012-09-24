

function ftpPutFile($targetUri, $username, $password, $sourcePath) {
    $client = New-Object System.Net.WebClient
    $client.Credentials = New-Object System.Net.NetworkCredential($username,$password)
    $client.UploadFile($targetUri, $sourcePath)
}

$srcDir = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent
$target = "ftp://www.breezejs.com/sites/all/packages/testFile.txt"
$user = "www.breezejs.com|jayt"
$pw = "foo"
$file = $srcDir + "\testFile.txt";
ftpPutFile $target $user $pw $file