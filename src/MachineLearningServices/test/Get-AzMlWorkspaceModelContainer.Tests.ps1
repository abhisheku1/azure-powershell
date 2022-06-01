if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceModelContainer'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceModelContainer.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceModelContainer' {
    It 'List' {
        { Get-AzMlWorkspaceModelContainer  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01} | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceModelContainer  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name azureml_plucky_collar_5x0ds0fgb3_output_mlflow_log_model } | Should -Not -Throw
    }
}
