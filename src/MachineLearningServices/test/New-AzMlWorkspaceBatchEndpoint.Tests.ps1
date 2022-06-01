if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceBatchEndpoint'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceBatchEndpoint.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceBatchEndpoint' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batchpwsh01-key -AuthMode 'Key' -Location 'eastus'
            Update-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batchpwsh01-key -Tag @{'key'='value'}
            Remove-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batchpwsh01-key
        } | Should -Not -Throw
    }
}
