if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceEnvironmentVersion'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceEnvironmentVersion.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceEnvironmentVersion' {
    It 'List' {
        { Get-AzMlWorkspaceEnvironmentVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01 } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceEnvironmentVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01 -Version 1 } | Should -Not -Throw
    }
}
