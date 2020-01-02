$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$GetVersionScript = Join-Path -Path $ScriptDir -ChildPath get-version.ps1
$NuspecFile = Join-Path -Path $ScriptDir -ChildPath demo.nuspec

$OldVersion = [Version](& $GetVersionScript)
$NewVersion = New-Object -TypeName Version -ArgumentList ($OldVersion.Major, $OldVersion.Minor, ($OldVersion.Build + 1), $OldVersion.Revision)

$xml = [xml](Get-Content $NuspecFile)
$xml.package.metadata.version = $NewVersion.ToString()
$xml.Save($NuspecFile)
