if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspace'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspace.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspace' {
    It 'CreateExpanded' {
        { 
            New-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01 -Location eastus `
            -ApplicationInsightId "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.insights/components/mlappinsights01" `
            -KeyVaultId "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.keyvault/vaults/mlkeyvault01" `
            -StorageAccountId "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.storage/storageaccounts/mlstorageaccount02" `
            -IdentityType 'SystemAssigned' 
            Update-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01 -Tag @{'key1' = 'value2'}
            Remove-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01
        } | Should -Not -Throw
    }
}
