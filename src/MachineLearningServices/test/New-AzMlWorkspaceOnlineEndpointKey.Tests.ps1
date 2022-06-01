if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceOnlineEndpointKey'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceOnlineEndpointKey.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceOnlineEndpointKey' {
    It 'RegenerateExpanded' {
        { New-AzMlWorkspaceOnlineEndpointKey -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name online-pwsh02 -KeyType 'Primary' } | Should -Not -Throw
    }
}
