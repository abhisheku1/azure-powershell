@{
  GUID = '7b058efe-fddb-4f8e-9f09-0bf8160b91aa'
  RootModule = './Az.Education.psm1'
  ModuleVersion = '0.1.0'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: Education cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.Education.private.dll'
  FormatsToProcess = './Az.Education.format.ps1xml'
  FunctionsToExport = 'Get-AzEducationGrant', 'Get-AzEducationJoinRequest', 'Get-AzEducationLab', 'Get-AzEducationStudent', 'Get-AzEducationStudentLab', 'Grant-AzEducationGet', 'Invoke-AzEducationInviteApprove', 'Invoke-AzEducationInviteDeny', 'Invoke-AzEducationInviteGenerateCode', 'Invoke-AzEducationInviteRedeem', 'Invoke-AzEducationLabCreate', 'Invoke-AzEducationLabDelete', 'Invoke-AzEducationLabGet', 'Invoke-AzEducationStudentCreate', 'Invoke-AzEducationStudentDelete', 'Invoke-AzEducationStudentGet', 'Invoke-AzEducationStudentGetLab', '*'
  AliasesToExport = '*'
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'PSModule', 'Education'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
    }
  }
}
