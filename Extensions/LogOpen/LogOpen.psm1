function GetMainMenuItems
{
    param(
        $menuArgs
    )

    $menuItem1 = New-Object Playnite.SDK.Plugins.ScriptMainMenuItem
    $menuItem1.Description = [Playnite.SDK.ResourceProvider]::GetString("LOCMenuItemOpenLogDescription")
    $menuItem1.FunctionName = "Open-Log"

    return $menuItem1
}

function Open-Log
{
    param(
        $scriptMainMenuItemActionArgs
    )
    
    $logPath = Join-Path $PlayniteApi.Paths.ConfigurationPath -ChildPath "Playnite.log"
    if (Test-Path $logPath)
    {
        Start-Process $logPath
    }
}