if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceOnlineDeploymentLog'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceOnlineDeploymentLog.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceOnlineDeploymentLog' {
    It 'Get' -skip {
        { Get-AzMlWorkspaceOnlineDeploymentLog -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-cli01 -Name blue } | Should -Not -Throw
    }
}
