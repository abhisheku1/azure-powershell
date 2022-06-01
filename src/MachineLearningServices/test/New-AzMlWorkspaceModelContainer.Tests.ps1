if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceModelContainer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceModelContainer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceModelContainer' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceModelContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01 -Description "code container for test."
            Remove-AzMlWorkspaceModelContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01
        } | Should -Not -Throw
    }
}
