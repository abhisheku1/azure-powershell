if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceDatastore'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceDatastore.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceDatastore' {
    It 'List' {
        { Get-AzMlWorkspaceDatastore  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceDatastore  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name workspaceartifactstore } | Should -Not -Throw
    }
}
