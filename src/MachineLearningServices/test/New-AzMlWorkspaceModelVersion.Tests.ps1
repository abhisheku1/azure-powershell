if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceModelVersion'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceModelVersion.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceModelVersion' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspaceModelVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01 -Version 1 -ModelType "mlflow_model" `
            -ModelUri "azureml://subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/ml-rg-test/workspaces/mlworkspace-cli01/datastores/workspaceartifactstore/paths/ExperimentRun/dcid.plucky_collar_5x0ds0fgb3/model"
            Remove-AzMlWorkspaceModelVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01 -Version 1
        } | Should -Not -Throw
    }
}
