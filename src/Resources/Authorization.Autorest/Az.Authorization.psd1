@{
  GUID = '72280483-7fee-4ac6-b0f9-f1c28374d733'
  RootModule = './Az.Authorization.psm1'
  ModuleVersion = '4.2.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: Authorization cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.Authorization.private.dll'
  FormatsToProcess = './Az.Authorization.format.ps1xml'
  FunctionsToExport = 'Get-AzRoleEligibilitySchedule', 'Get-AzRoleEligibilityScheduleRequest', 'Get-AzRoleManagementPolicy', 'Get-AzRoleManagementPolicyAssignment', 'New-AzRoleEligibilityScheduleRequest', 'New-AzRoleManagementPolicyAssignment', 'New-AzRoleManagementPolicyRuleObject', 'Remove-AzRoleManagementPolicy', 'Remove-AzRoleManagementPolicyAssignment', 'Stop-AzRoleEligibilityScheduleRequest', 'Update-AzRoleManagementPolicy', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'Authorization'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
