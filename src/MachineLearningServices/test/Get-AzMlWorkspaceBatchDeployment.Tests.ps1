if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceBatchDeployment'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceBatchDeployment.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceBatchDeployment' {
    It 'List' {
        { Get-AzMlWorkspaceBatchDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName batch-cli02 } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceBatchDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName batch-cli02 -Name nonmlflowdp } | Should -Not -Throw
    }
}
