if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceCompute'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceCompute.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceCompute' {
# Compute type: 'AKS', 'Kubernetes', 'AmlCompute', 'ComputeInstance','DataFactory', 'VirtualMachine', 'HDInsight', 'Databricks', 'DataLakeAnalytics', 'SynapseSpark'
    It 'AmlCompute' {
        { 
            $aml = New-AzMLWorkspaceAmlComputeObject -OSType 'Linux' -VMSize "STANDARD_DS3_V2" `
            -ScaleSettingMaxNodeCount 8 -ScaleSettingMinNodeCount 0 -RemoteLoginPortPublicAccess 'NotSpecified' -EnableNodePublicIP $true
            New-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02 -Location eastus -Compute $aml
        } | Should -Not -Throw
    }
}
