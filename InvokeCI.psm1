function Invoke-CICommand
{
    if ($env:CONFIGURATION -eq "WSL") {
        wsl $args[0] $args[1..$($args.Count - 1)];
    } else {
        . $args[0] $args[1..$($args.Count - 1)];
    }
}
