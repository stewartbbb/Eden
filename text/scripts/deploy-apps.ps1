param([String] $namePrefix, [String] $region, [String] $userName, [String] $password, [String] $tenantId)
if (!$namePrefix) {
    $namePrefix = $Env:namePrefix
}
if (!$region) {
    $region = $Env:region
}
if (!$userName) {
    $userName = $Env:userName
}
if (!$password) {
    $password = $Env:password
}
if (!$tenantId) {
    $tenantId = $Env:tenantId
}

Set-Location $PSSCriptRoot

. ./../../scripts/functions.ps1

./../build/build.ps1

./../deploy/deploy-apps.ps1 -namePrefix $namePrefix -region $region -userName $userName -password $password -tenantId $tenantId