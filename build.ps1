param(
        [Parameter(
                    Mandatory=$true,
                    Position=0,
                    HelpMessage='Set compiler path variable')]
        [string] $spCompPath,

        [Parameter(
                    Mandatory=$true,
                    Position=1,
                    HelpMessage='Set include path variable')]
        [string] $spIncludePath
)

# location gets pushed on a stack since -Dpath does not work on windows.
Push-Location $PSScriptRoot

$executable = $spCompPath
$plugin = 'src/vshPackageManager.sp'
$outPath = Join-Path -Path $PSScriptRoot -ChildPath '/build/vshPackageManager.smx'
$outPath = '-o=' + $outPath
$includePath = '-i=' + $spIncludePath
$localIncludePath = '-i=''include'''
$optimization = '-O2'
$verbosity = '-v2'

& $executable $plugin $outPath $includePath $localIncludePath $optimization $verbosity

Pop-Location