if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceEnvironmentVersion'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceEnvironmentVersion.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceEnvironmentVersion' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceEnvironmentVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name commandjobenv -Version 1 -Image "library/python:latest" 
            Remove-AzMlWorkspaceEnvironmentVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name commandjobenv
        } | Should -Not -Throw
    }
}
