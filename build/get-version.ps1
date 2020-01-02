$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$NuspecFile = Join-Path -Path $ScriptDir -ChildPath demo.nuspec

$xml = [xml](Get-Content $NuspecFile)
$version = New-Object -TypeName Version -ArgumentList $xml.package.metadata.version

return $version