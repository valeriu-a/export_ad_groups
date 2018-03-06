$test = @('127.0.0.1:443','192.168.200.55:443','1192.168.200.50:443','153.40.240.67:443','153.40.240.68:443','153.40.240.69:443','169.173.58.95:443','169.173.58.96:443','169.173.58.98:443','169.193.246.199:443','169.193.246.201:443','169.193.246.206:443','165.203.224.67:443','169.185.180.30:443','169.185.180.115:443','169.185.181.177:443','169.193.215.112:443','169.193.215.213:443')

Foreach ($t in $test)
{
  $source = $t.Split(':')[0]
  $port = $t.Split(':')[1]
  
  Write-Host "Connecting to $source on port $port"

  try
  {
    $socket = New-Object System.Net.Sockets.TcpClient($source, $port)
  }
  catch [Exception]
  {
    Write-Host $_.Exception.GetType().FullName
    Write-Host $_.Exception.Message
  }

  Write-Host "Connected`n"
}
