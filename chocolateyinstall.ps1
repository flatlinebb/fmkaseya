
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

  checksum      = '69D97855BF0A66979E55489037F595EC18D70C06EC945161413323C4B404B5DF'
  checksumType  = 'sha256'
  checksum64    = '69D97855BF0A66979E55489037F595EC18D70C06EC945161413323C4B404B5DF'
  checksumType64= 'sha256'

  silentArgs   = ''
  validExitCodes= @(0,-29)
}

Install-ChocolateyPackage @packageArgs


















