<#
 .SYNOPSIS
    Bootstrap and describe environment during GitHub Windows CI containers
#>

param(
)

$ErrorActionPreference = 'Stop'

Function Get-Env
{
    Get-ChildItem Env:
}

Function Get-WorkingTree
{
    tree /A /F $env:GITHUB_WORKSPACE
}

Function Main()
{
    Get-Env
    Get-WorkingTree
}

Main