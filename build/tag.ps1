$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$GetVersionScript = Join-Path -Path $ScriptDir -ChildPath get-version.ps1

$Version = [Version](& $GetVersionScript)

$TagName = "v${Version}_nightly"

git tag $TagName
