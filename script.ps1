function Test-Function
{
    $location = Get-Location
    Write-Output $location.Path
}

Test-Function
