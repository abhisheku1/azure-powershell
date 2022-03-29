@{
  GUID = '2cba45aa-6788-45db-94bf-7aa7a2b8312a'
  RootModule = './Az.MachineLearningWorkspaces.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: MachineLearningWorkspaces cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.MachineLearningWorkspaces.private.dll'
  FormatsToProcess = './Az.MachineLearningWorkspaces.format.ps1xml'
  FunctionsToExport = 'Get-AzMLServiceQuota', 'Get-AzMLServiceUsage', 'Get-AzMLServiceVMSize', 'Get-AzMlWorkspace', 'Get-AzMlWorkspaceBatchDeployment', 'Get-AzMlWorkspaceBatchEndpoint', 'Get-AzMlWorkspaceBatchEndpointKey', 'Get-AzMlWorkspaceCodeContainer', 'Get-AzMlWorkspaceCodeVersion', 'Get-AzMlWorkspaceComponentContainer', 'Get-AzMlWorkspaceComponentVersion', 'Get-AzMlWorkspaceCompute', 'Get-AzMlWorkspaceComputeKey', 'Get-AzMlWorkspaceComputeNode', 'Get-AzMlWorkspaceConnection', 'Get-AzMlWorkspaceDatasetContainer', 'Get-AzMlWorkspaceDatasetVersion', 'Get-AzMlWorkspaceDatastore', 'Get-AzMlWorkspaceDatastoreSecret', 'Get-AzMlWorkspaceEnvironmentContainer', 'Get-AzMlWorkspaceEnvironmentVersion', 'Get-AzMlWorkspaceFeature', 'Get-AzMlWorkspaceJob', 'Get-AzMlWorkspaceKey', 'Get-AzMlWorkspaceModelContainer', 'Get-AzMlWorkspaceModelVersion', 'Get-AzMlWorkspaceNotebookAccessToken', 'Get-AzMlWorkspaceNotebookKey', 'Get-AzMlWorkspaceOnlineDeployment', 'Get-AzMlWorkspaceOnlineDeploymentLog', 'Get-AzMlWorkspaceOnlineDeploymentSku', 'Get-AzMlWorkspaceOnlineEndpoint', 'Get-AzMlWorkspaceOnlineEndpointKey', 'Get-AzMlWorkspaceOnlineEndpointToken', 'Get-AzMlWorkspaceOutboundNetworkDependencyEndpoint', 'Get-AzMlWorkspaceStorageAccountKey', 'Invoke-AzMlWorkspaceDiagnoseWorkspace', 'Invoke-AzMlWorkspacePrepareWorkspaceNotebook', 'Invoke-AzMlWorkspaceResyncWorkspaceKey', 'New-AzMlWorkspace', 'New-AzMlWorkspaceBatchDeployment', 'New-AzMlWorkspaceBatchEndpoint', 'New-AzMlWorkspaceCodeContainer', 'New-AzMlWorkspaceCodeVersion', 'New-AzMlWorkspaceComponentContainer', 'New-AzMlWorkspaceComponentVersion', 'New-AzMlWorkspaceCompute', 'New-AzMlWorkspaceConnection', 'New-AzMlWorkspaceDatasetContainer', 'New-AzMlWorkspaceDatasetVersion', 'New-AzMlWorkspaceDatastore', 'New-AzMlWorkspaceEnvironmentContainer', 'New-AzMlWorkspaceEnvironmentVersion', 'New-AzMlWorkspaceJob', 'New-AzMlWorkspaceModelContainer', 'New-AzMlWorkspaceModelVersion', 'New-AzMlWorkspaceOnlineDeployment', 'New-AzMlWorkspaceOnlineEndpoint', 'New-AzMlWorkspaceOnlineEndpointKey', 'Remove-AzMlWorkspace', 'Remove-AzMlWorkspaceBatchDeployment', 'Remove-AzMlWorkspaceBatchEndpoint', 'Remove-AzMlWorkspaceCodeContainer', 'Remove-AzMlWorkspaceCodeVersion', 'Remove-AzMlWorkspaceComponentContainer', 'Remove-AzMlWorkspaceComponentVersion', 'Remove-AzMlWorkspaceCompute', 'Remove-AzMlWorkspaceConnection', 'Remove-AzMlWorkspaceDatasetContainer', 'Remove-AzMlWorkspaceDatasetVersion', 'Remove-AzMlWorkspaceDatastore', 'Remove-AzMlWorkspaceEnvironmentContainer', 'Remove-AzMlWorkspaceEnvironmentVersion', 'Remove-AzMlWorkspaceJob', 'Remove-AzMlWorkspaceModelContainer', 'Remove-AzMlWorkspaceModelVersion', 'Remove-AzMlWorkspaceOnlineDeployment', 'Remove-AzMlWorkspaceOnlineEndpoint', 'Restart-AzMlWorkspaceCompute', 'Set-AzMlWorkspace', 'Set-AzMlWorkspaceBatchDeployment', 'Set-AzMlWorkspaceBatchEndpoint', 'Set-AzMlWorkspaceCodeContainer', 'Set-AzMlWorkspaceCodeVersion', 'Set-AzMlWorkspaceComponentContainer', 'Set-AzMlWorkspaceComponentVersion', 'Set-AzMlWorkspaceCompute', 'Set-AzMlWorkspaceDatasetContainer', 'Set-AzMlWorkspaceDatasetVersion', 'Set-AzMlWorkspaceDatastore', 'Set-AzMlWorkspaceEnvironmentContainer', 'Set-AzMlWorkspaceEnvironmentVersion', 'Set-AzMlWorkspaceJob', 'Set-AzMlWorkspaceModelContainer', 'Set-AzMlWorkspaceModelVersion', 'Set-AzMlWorkspaceOnlineDeployment', 'Set-AzMlWorkspaceOnlineEndpoint', 'Start-AzMlWorkspaceCompute', 'Stop-AzMlWorkspaceCompute', 'Stop-AzMlWorkspaceJob', 'Update-AzMLServiceQuota', 'Update-AzMlWorkspace', 'Update-AzMlWorkspaceBatchDeployment', 'Update-AzMlWorkspaceBatchEndpoint', 'Update-AzMlWorkspaceCompute', 'Update-AzMlWorkspaceOnlineDeployment', 'Update-AzMlWorkspaceOnlineEndpoint', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'MachineLearningWorkspaces'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
