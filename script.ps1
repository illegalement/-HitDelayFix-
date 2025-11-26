
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
    Write-Host -ForegroundColor Green "     by Miyuze"
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
        Write-Host "Choose an option to download.:"
        Write-Host ""
        Write-Host "        [1] LunarQT"
        Write-Host "        [2] Badlion"
        Write-Host "        [3] Forge"
        Write-Host "        [4] Cancel"
        Write-Host ""
        $ChoserPF = Read-Host "Enter the option number."

        if ($ChoserPF -eq 1) {
            Write-Host "Downloading Hitdelay..."
            $url = "https://store3.gofile.io/download/web/77609f0f-d4c0-460a-bb99-f26da6e3c3f6/Lunar%20(Use%20Both).rar"
            $destinationFile = "$OutfilePath\"
            Invoke-WebRequest -Uri $url -OutFile $destinationFile
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1  
            Clear-Host
        }
        elseif ($ChoserPF -eq 2) {
            Write-Host "Downloading Hitdelay..."
            $urlPB = "https://store-na-phx-3.gofile.io/download/web/2f00e38d-a6b6-428f-81c5-28af59bb407f/Badlion.rar"
            $destinationFilePB = "$OutfilePath\"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }
        elseif ($ChoserPF -eq 3) {
                       Write-Host "Downloading Hitdelay..."
            $urlPB = "https://store8.gofile.io/download/web/2104b349-03c1-4ab1-b8f4-868f8b945bce/Forge.rar"
            $destinationFilePB = "$OutfilePath\"
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
        Write-Host "        [1] Download"
        Write-Host "        [2] Cancel"
        Write-Host ""
        $Choser2 = Read-Host "Enter the option number."

        if ($Choser2 -eq 1) {
            Write-Host "Downloading Lunar QT..."
            $url2 = "https://github.com/Zack-src/Service-Execution/releases/download/1.0/Service-Execution.exe"
            $destinationFile2 = "$OutfilePath\Service-Execution.exe"
            Invoke-WebRequest -Uri $url2 -OutFile $destinationFile2
            Write-Host "Download complete!" -ForegroundColor Green
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
