$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$NightlyRevFile = Join-Path -Path $ScriptDir -ChildPath nightly.rev
$NuspecFile = Join-Path -Path $ScriptDir -ChildPath demo.nuspec

git add $NightlyRevFile
git add $NuspecFile
git commit -m "Nightly Update"
