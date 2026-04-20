#######################################
# Custom Price Server Files Combine
# by TreeFrogTinkerer
#
# Simple script that combines all faux price servers for Fund Manager into a single file to use as a <local file> server
#
# 4/20/26
#######################################

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/TreeFrogTinkerer/FundManager-QuoteServer-IBonds/refs/heads/main/IbondFM-QuoteServer.csv" -OutFile "IbondFM-QuoteServer.csv"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/TreeFrogTinkerer/FundManager-QuoteServer-US-CPI/refs/heads/main/CPIFM-BLS.csv" -OutFile "CPIFM-BLS.csv"

sleep 1
$ibondcsv = Import-Csv "IbondFM-QuoteServer.csv" 
#Get-Content -Path "IbondFM-QuoteServer.csv" | Select-Object -Skip 1 | ConvertFrom-Csv 
$cpicsv = Import-Csv "CPIFM-BLS.csv"
     
$cpicsv | Export-Csv -Path "FM-CombinedCustomQuoteServer.csv" -NoTypeInformation
$ibondcsv | Export-CSV -Path "FM-CombinedCustomQuoteServer.csv" -NoTypeInformation -Append
Remove-Item -Path "CPIFM-BLS.csv", "IbondFM-QuoteServer.csv"
