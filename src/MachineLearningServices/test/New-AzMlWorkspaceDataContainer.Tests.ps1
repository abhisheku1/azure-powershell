if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceDataContainer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceDataContainer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceDataContainer' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceDataContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name datacontainer-pwsh01 -DataType 'uri_file' 
            Remove-AzMlWorkspaceDataContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name datacontainer-pwsh01
        } | Should -Not -Throw
    }
}
