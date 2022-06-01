if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceConnection'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceConnection.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceConnection' {
    It 'List' {
        { Get-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -ConnectionName test } | Should -Not -Throw
    }
}
