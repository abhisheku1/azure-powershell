if(($null -eq $TestName) -or ($TestName -contains 'Remove-AzMlWorkspaceEnvironmentContainer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Remove-AzMlWorkspaceEnvironmentContainer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Remove-AzMlWorkspaceEnvironmentContainer' {
    It 'Delete' {
        { Remove-AzMlWorkspaceEnvironmentContainer  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01 } | Should -Not -Throw
    }
}
