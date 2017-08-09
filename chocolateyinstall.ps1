
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

  checksum      = 'E27DD373CA2B49D73248CEA7BA39D4A81D360D25622D013B43CDB6D06A13A88D'
  checksumType  = 'sha256'
  checksum64    = 'E27DD373CA2B49D73248CEA7BA39D4A81D360D25622D013B43CDB6D06A13A88D'
  checksumType64= 'sha256'

  silentArgs   = ''
  validExitCodes= @(0,-29)
}

Install-ChocolateyPackage @packageArgs


















