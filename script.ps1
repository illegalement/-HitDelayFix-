
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
                       Write-Host "Downloading Hitdelay..."
            $urlPB = "https://download850.mediafire.com/1itxwl8y65gg_lRoRHbljNjD1sxqS-FWkhb_xy_oT2sdP7ClnPXOTlY-IlcxrHdrDmiFyi1M3gJeH_b8dokTBI6wW2JMb8GngH4hwbXiYaBrjoaqbJJ99LDb7j_KBHQL4qgvE1pxSjioL6d6Qgo3r0RX8qk_9C4vDt5C4MnyUVpvqOrh/nrfn5j8f6qqcwse/Lunar+%28Use+Both%29.zip"
            $destinationFilePB = "$OutfilePath\Lunar (Use Both).zip"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }
        elseif ($ChoserPF -eq 2) {
                       Write-Host "Downloading Hitdelay..."
            $urlPB = "https://download1980.mediafire.com/mw0i1c4e1lygCBIXhg1QNjtSxnVo1GshAsQETkRjloO6k5UEnKSPE_0VFD0En6OBBV6O_RoqQGDnlE0gArIm5rJak3_3OOikzutA97AgCF67umlrHIV23iMISgHJSbKsX_cnSaXW5V45MjzHzll0tu8dBMr5bHd-8Wz66BMvPz1-xs15/dpm01zgpudtho6r/Badlion.zip"
            $destinationFilePB = "$OutfilePath\Badlion.zip"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
            Write-Host "Download complete!" -ForegroundColor Green
            Start-Sleep -Seconds 1
            Clear-Host
        }
        elseif ($ChoserPF -eq 3) {
                       Write-Host "Downloading Hitdelay..."
            $urlPB = "https://download1581.mediafire.com/f0md1ya6jbsgLb3T51C1TU4vTxpC8EKSsXZTst5WV7xBK_5jGh9VOe5BE-6TKu6Nzfj34gbzRiorORcGCXCzQ-4HQX-Cc_pMVoobxskrSdrdPnvcLXoUw1PVDUltaAGFBs1qDT6y7dCMXT-mCANCCrbtYp-hCLeqOv5J2TpeTedCSnNJ/2jxrp9v8bxv7dxl/Forge.zip"
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
                       Write-Host "Downloading Hitdelay..."
            $urlPB = "https://download1347.mediafire.com/pdux5nqynf3gj9TkNmFf3NUUI8aSjMibO8XhrToSjdoouLq8mulKSMnwm66o5GFRTyrN_bNSgpw9XWryR1PvUyImL2ZTaEOjKjDegoR_XAG52wm0-ArTHdC0Lm5_h_BjmfBnJqaDf80tdMQovApAFp_pY6rCclHdbw8mDt02Ti7exz6W/g9o1wosjlkavrvh/LunarQT.zip"
            $destinationFilePB = "$OutfilePath\LunarQT.zip"
            Invoke-WebRequest -Uri $urlPB -OutFile $destinationFilePB
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
