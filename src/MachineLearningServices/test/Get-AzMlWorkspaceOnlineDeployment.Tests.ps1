if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceOnlineDeployment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceOnlineDeployment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceOnlineDeployment' {
    It 'List' {
        { Get-AzMlWorkspaceOnlineDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-cli01 } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceOnlineDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-cli01 -Name blue } | Should -Not -Throw
    }
}
