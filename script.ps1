
$ErrorActionPreference = "SilentlyContinue"
clear-host
function MainMenu {
    Clear-Host
    Logo                                                          
    Write-Host @"
    
        [1] Hitdelay            [2] LunarQT
       

"@
    Write-Host -ForegroundColor Yellow "        [Exit] Exit and close Script "
}
function Menu2 {
    Clear-Host
    Logo
    Write-Host @"
    
        [1] Hitdelay                  [2] LunarQT
        

"@
    Write-Host -ForegroundColor Yellow "        [Exit] Exit and close Script "
}

function Logo {
    Write-Host @"

.-------------------------------------------------------.
| _   _ _ _     ____       _               _____ _      |
|| | | (_) |_  |  _ \  ___| | __ _ _   _  |  ___(_)_  __|
|| |_| | | __| | | | |/ _ \ |/ _` | | | | | |_  | \ \/ /|
||  _  | | |_  | |_| |  __/ | (_| | |_| | |  _| | |>  < |
||_| |_|_|\__| |____/ \___|_|\__,_|\__, | |_|   |_/_/\_\|
|                                  |___/                |
'-------------------------------------------------------'
                                                                             
"@ -ForegroundColor Blue                                                           
    Write-Host -ForegroundColor DarkRed "by Miyuze"
    Write-Host ""
}
# Caminho fixo
$OutfilePath = "C:\BNY"

# Verifica se a pasta existe, se não, cria
if (!(Test-Path -Path $OutfilePath)) {
    New-Item -ItemType Directory -Path $OutfilePath | Out-Null
    Write-Host "Folder C:\BNY created successfully!" -ForegroundColor Green
}
else {
    Write-Host "Using the existing folder: C:\BNY" -ForegroundColor Yellow
}

Clear-Host
MainMenu

while ($true) {
    Set-Location $OutfilePath
    $Choser = Read-Host "Choose"

    if ($Choser -eq 1) {
        Clear-Host
        Logo 
        Write-Host "Choose an option to download.:" -ForegroundColor White
        Write-Host ""
        Write-Host "        [1] LunarQT"
        Write-Host ""
        Write-Host "        [2] Badlion" 
        Write-Host ""
        Write-Host "        [3] Forge" 
        Write-Host ""
        Write-Host "        [4] Cancel" -ForegroundColor Red
        Write-Host ""
        $ChoserPF = Read-Host "Enter the option number."

        if ($ChoserPF -eq 1) {
                       Write-Host "Downloading Hitdelay..." -ForegroundColor Cyan
            $urlPB = "https://files.catbox.moe/n8mw9w.zip"
            $destinationFilePB = "$OutfilePath\Lunar (Use Both).zip"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }
        elseif ($ChoserPF -eq 2) {
                       Write-Host "Downloading Hitdelay..." -ForegroundColor Cyan
            $urlPB = "https://files.catbox.moe/vempk3.zip"
            $destinationFilePB = "$OutfilePath\Badlion.zip"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }
        elseif ($ChoserPF -eq 3) {
                       Write-Host "Downloading Hitdelay..." -ForegroundColor Cyan
            $urlPB = "https://files.catbox.moe/ugz2a9.zip"
            $destinationFilePB = "$OutfilePath\Forge.zip"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }


    }
    elseif ($Choser -eq 2) {
        Clear-Host
        Logo 
        Write-Host "Choose an option to download.:"
        Write-Host ""
        Write-Host "        [1] Download" -ForegroundColor Green
        Write-Host ""
        Write-Host "        [2] Cancel" -ForegroundColor Red
        Write-Host ""
        $Choser2 = Read-Host "Enter the option number."

        if ($Choser2 -eq 1) {
            Start-Sleep -Seconds 5
            Start-Process "https://www.mediafire.com/file/g9o1wosjlkavrvh/LunarQT.zip/file"
            Write-Host "Browser Opened" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }
        elseif ($Choser2 -eq 2) {
            Write-Host "Operation cancelled."
            Start-Sleep -Seconds 1
            Clear-Host
        }
        else {
            Write-Host "Invalid option. Please try again."
            Start-Sleep -Seconds 1  
            Clear-Host  
        }
    }
    elseif ($Choser -match "^exit$") {
        Clear-Host
        Logo
        Write-Host "Leaving..." -ForegroundColor Yellow
        Start-Sleep -Seconds 1 
        Clear-Host
        break
        Clear-Host
    }
    else {
        Write-Host "Invalid option. Please try again."
        Start-Sleep -Seconds 1  
        Clear-Host
    }
        MainMenu
}
