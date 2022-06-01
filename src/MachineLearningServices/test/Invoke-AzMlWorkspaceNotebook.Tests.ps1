if(($null -eq $TestName) -or ($TestName -contains 'Invoke-AzMlWorkspaceNotebook'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-AzMlWorkspaceNotebook.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-AzMlWorkspaceNotebook' {
    It 'Prepare' {
        { Invoke-AzMlWorkspaceNotebook -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01} | Should -Not -Throw
    }
}
