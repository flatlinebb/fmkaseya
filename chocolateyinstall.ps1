
$ErrorActionPreference = 'Stop';

$packageName= 'fmkaseya'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://184.154.19.146/install/VSA-default-51514598/KcsSetup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url

  softwareName  = 'Kaseya Agent*'

  checksum      = '8E772A8098696DBA0664CAC950E017BA59C58976AFDB773E646A1C2BC8F30C81'
  checksumType  = 'sha256'
  checksum64    = '8E772A8098696DBA0664CAC950E017BA59C58976AFDB773E646A1C2BC8F30C81'
  checksumType64= 'sha256'

  silentArgs   = ''
  validExitCodes= @(0,-29)
}

Install-ChocolateyPackage @packageArgs


















