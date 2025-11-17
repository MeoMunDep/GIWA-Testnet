@echo off
title giwa testnet Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

echo Checking configuration files...

if not exist configs.json (
    echo {> configs.json
    echo   "proxyMode": "round",>> configs.json
    echo   "delayEachWallet": [5, 8],>> configs.json
    echo   "timeToRestartAllWallets": 300,>> configs.json
    echo   "howManyWalletsRunInOneTime": 1,>> configs.json

    echo.>> configs.json
    echo   "bridgeL1toL2": {>> configs.json
    echo     "enabled": false,>> configs.json
    echo     "count": 1,>> configs.json
    echo     "amount": 0.0001>> configs.json
    echo   },>> configs.json

    echo   "bridgeL2toL1": {>> configs.json
    echo     "enabled": true,>> configs.json
    echo     "count": 1,>> configs.json
    echo     "amount": 0.0001>> configs.json
    echo   },>> configs.json

    echo   "deployERC20": {>> configs.json
    echo     "enabled": true,>> configs.json
    echo     "count": 1>> configs.json
    echo   },>> configs.json

    echo   "sendERC20": {>> configs.json
    echo     "enabled": true,>> configs.json
    echo     "amount": 1000,>> configs.json
    echo     "times": 1>> configs.json
    echo   }>> configs.json

    echo }>> configs.json

    echo Created configs.json
)

(for %%F in (privateKeys.txt proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ethers solc
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ethers solc
)
echo Dependencies installation completed!

echo Starting the bot...
node meomundep

pause
exit
