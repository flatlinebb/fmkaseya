
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

  checksum      = '6F68292F26DCC36E666FB1FDF9EA9C09909D680530086D7960282ACE94FBC08C'
  checksumType  = 'sha256'
  checksum64    = '6F68292F26DCC36E666FB1FDF9EA9C09909D680530086D7960282ACE94FBC08C'
  checksumType64= 'sha256'

  silentArgs   = ''
  validExitCodes= @(0,-29)
}

Install-ChocolateyPackage @packageArgs


















