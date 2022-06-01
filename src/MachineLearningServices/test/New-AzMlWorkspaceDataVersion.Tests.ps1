if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceDataVersion'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceDataVersion.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceDataVersion' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceDataVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name iris-data -Version 2 -DataType 'uri_file' -DataUri "https://azuremlexamples.blob.core.windows.net/datasets/iris.csv" 
            Remove-AzMlWorkspaceDataVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name iris-data -Version 2
        } | Should -Not -Throw
    }
}
