if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceOnlineEndpoint'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceOnlineEndpoint.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceOnlineEndpoint' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-pwsh02 -Location eastus -AuthMode 'Key' -IdentityType 'SystemAssigned'
            Update-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-pwsh02 -Tag @{'key'='value'}
            Remove-AzMlWorkspaceOnlineEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-pwsh02
        } | Should -Not -Throw
    }
}
