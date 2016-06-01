<#
DiceRoller.ps1
.SYNOPSIS 
Rolls the selected dices and gives you the result. 
.NOTES
AUTHOR:    Sem Meijer
BLOG:      https://msitpros.com          
#>
do {
  [int]$userMenuChoice = 0
  while ( $userMenuChoice -lt 1 -or $userMenuChoice -gt 4) {
    Write-Host "1. Roll 1d4"
    Write-Host "2. Roll 1d6"
    Write-Host "3. Roll 1d20"
    Write-Host "4. Quit rolling and Exit"

    [int]$userMenuChoice = Read-Host "Select the dice you want to roll"

    switch ($userMenuChoice) {
      1 {cls 
      write-host "rolling the dice..."(get-random -min 1 -max 5) -foreground green}
      2 {cls
      write-host "rolling the dice..."(get-random -min 1 -max 7) -foreground green}
      3 {cls
      $1D20 = (get-random -min 1 -max 21)
        If ($1D20 -eq 20) {Write-Host "Rolling the dice....20 Great Hit!"-foreground Red } Else {write-host "rolling the dice...$1D20" -foreground green }}
      default {Write-Host "Nothing selected"}
    }
  }
} while ( $userMenuChoice -ne 4 )


