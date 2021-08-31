@{
  GUID = 'c47805c1-704d-4346-9ffb-650bf16071e9'
  RootModule = './Az.Resources.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: Mg cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.Resources.private.dll'
  FormatsToProcess = './Az.Resources.format.ps1xml'
  FunctionsToExport = 'Add-AzMgApplicationPassword', 'Add-AzMgServicePrincipalPassword', 'Get-AzMgApplication', 'Get-AzMgGroup', 'Get-AzMgGroupMember', 'Get-AzMgServicePrincipal', 'Get-AzMgUser', 'New-AzMgApplication', 'New-AzMgGroup', 'New-AzMgServicePrincipal', 'New-AzMgUser', 'Remove-AzMgApplication', 'Remove-AzMgApplicationPassword', 'Remove-AzMgGroup', 'Remove-AzMgServicePrincipal', 'Remove-AzMgServicePrincipalPassword', 'Remove-AzMgUser', 'Update-AzMgApplication', 'Update-AzMgGroup', 'Update-AzMgServicePrincipal', 'Update-AzMgUser', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'Mg'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
