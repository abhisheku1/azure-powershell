#
# Module manifest for module 'Az'
#
# Generated by: Microsoft Corporation
#
# Generated on: 4/29/2021
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '5.9.0'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'd48d710e-85cb-46a1-990f-22dae76f6b5f'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Cmdlets to manage resources in Azure. This module is compatible with WindowsPowerShell and PowerShell Core.
For more information about the Az module, please visit the following: https://docs.microsoft.com/en-us/powershell/azure/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.2.8'; }, 
               @{ModuleName = 'Az.Advisor'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.Aks'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.AnalysisServices'; RequiredVersion = '1.1.4'; }, 
               @{ModuleName = 'Az.ApiManagement'; RequiredVersion = '2.2.0'; }, 
               @{ModuleName = 'Az.AppConfiguration'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.ApplicationInsights'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Automation'; RequiredVersion = '1.7.0'; }, 
               @{ModuleName = 'Az.Batch'; RequiredVersion = '3.1.0'; }, 
               @{ModuleName = 'Az.Billing'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Cdn'; RequiredVersion = '1.7.0'; }, 
               @{ModuleName = 'Az.CognitiveServices'; RequiredVersion = '1.8.0'; }, 
               @{ModuleName = 'Az.Compute'; RequiredVersion = '4.12.0'; }, 
               @{ModuleName = 'Az.ContainerInstance'; RequiredVersion = '1.0.3'; }, 
               @{ModuleName = 'Az.ContainerRegistry'; RequiredVersion = '2.2.2'; }, 
               @{ModuleName = 'Az.CosmosDB'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.DataBoxEdge'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Databricks'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.DataFactory'; RequiredVersion = '1.12.0'; }, 
               @{ModuleName = 'Az.DataLakeAnalytics'; RequiredVersion = '1.0.2'; }, 
               @{ModuleName = 'Az.DataLakeStore'; RequiredVersion = '1.3.0'; }, 
               @{ModuleName = 'Az.DataShare'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.DesktopVirtualization'; RequiredVersion = '2.1.1'; }, 
               @{ModuleName = 'Az.DeploymentManager'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.DevTestLabs'; RequiredVersion = '1.0.2'; }, 
               @{ModuleName = 'Az.Dns'; RequiredVersion = '1.1.2'; }, 
               @{ModuleName = 'Az.EventGrid'; RequiredVersion = '1.3.0'; }, 
               @{ModuleName = 'Az.EventHub'; RequiredVersion = '1.7.2'; }, 
               @{ModuleName = 'Az.FrontDoor'; RequiredVersion = '1.8.0'; }, 
               @{ModuleName = 'Az.Functions'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.HDInsight'; RequiredVersion = '4.2.1'; }, 
               @{ModuleName = 'Az.HealthcareApis'; RequiredVersion = '1.3.1'; }, 
               @{ModuleName = 'Az.IotHub'; RequiredVersion = '2.7.3'; }, 
               @{ModuleName = 'Az.KeyVault'; RequiredVersion = '3.4.3'; }, 
               @{ModuleName = 'Az.Kusto'; RequiredVersion = '1.0.1'; }, 
               @{ModuleName = 'Az.LogicApp'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.MachineLearning'; RequiredVersion = '1.1.3'; }, 
               @{ModuleName = 'Az.Maintenance'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.ManagedServices'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.MarketplaceOrdering'; RequiredVersion = '1.0.2'; }, 
               @{ModuleName = 'Az.Media'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.Migrate'; RequiredVersion = '1.0.1'; }, 
               @{ModuleName = 'Az.Monitor'; RequiredVersion = '2.5.0'; }, 
               @{ModuleName = 'Az.Network'; RequiredVersion = '4.7.0'; }, 
               @{ModuleName = 'Az.NotificationHubs'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.OperationalInsights'; RequiredVersion = '2.3.0'; }, 
               @{ModuleName = 'Az.PolicyInsights'; RequiredVersion = '1.4.1'; }, 
               @{ModuleName = 'Az.PowerBIEmbedded'; RequiredVersion = '1.1.2'; }, 
               @{ModuleName = 'Az.PrivateDns'; RequiredVersion = '1.0.3'; }, 
               @{ModuleName = 'Az.RecoveryServices'; RequiredVersion = '3.6.0'; }, 
               @{ModuleName = 'Az.RedisCache'; RequiredVersion = '1.4.0'; }, 
               @{ModuleName = 'Az.RedisEnterpriseCache'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Relay'; RequiredVersion = '1.0.3'; }, 
               @{ModuleName = 'Az.ResourceMover'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Resources'; RequiredVersion = '3.5.0'; }, 
               @{ModuleName = 'Az.SecurityInsights'; RequiredVersion = '0.2.0'; }, 
               @{ModuleName = 'Az.ServiceBus'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.ServiceFabric'; RequiredVersion = '2.4.0'; }, 
               @{ModuleName = 'Az.SignalR'; RequiredVersion = '1.2.0'; }, 
               @{ModuleName = 'Az.Sql'; RequiredVersion = '2.17.1'; }, 
               @{ModuleName = 'Az.SqlVirtualMachine'; RequiredVersion = '1.1.0'; }, 
#               @{ModuleName = 'Az.Storage'; RequiredVersion = '3.6.0'; },  # Storage removed to support preview
               @{ModuleName = 'Az.StorageSync'; RequiredVersion = '1.4.0'; }, 
               @{ModuleName = 'Az.StreamAnalytics'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Support'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.TrafficManager'; RequiredVersion = '1.0.4'; }, 
               @{ModuleName = 'Az.Websites'; RequiredVersion = '2.5.0'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ARM','ResourceManager','Linux','AzureAutomationNotSupported'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '5.9.0 - May 2021
Az.Aks
* Added support ''AcrNameToAttach'' in ''Set-AzAksCluster''. [#14692]
* Added support ''AcrNameToDetach'' in ''Set-AzAksCluster''. [#14693] 
* Added ''Set-AzAksClusterCredential'' to reset the ServicePrincipal of an existing AKS cluster.

Az.Automation
* Added support for User Assigned Identities and PublicNetworkAccess flag

Az.Cdn
* Added cmdlets to support new AFD Premium / Standard SKUs

Az.Compute
* Updated the ''Set-AzVMDiskEncryptionExtension'' cmdlet to support ADE extension migration from two pass (version with AAD input parameters) to single pass (version without AAD input parameters).
    - Added a switch parameter ''-Migrate'' to trigger migration workflow.
    - Added a switch parameter ''-MigrationRecovery'' to trigger recovery workflow for VMs experiencing failures after migration from two pass ADE.

Az.DataFactory
* Added User Assigned Identities to Data Factory.
* Updated ADF .Net SDK version to 4.18.0

Az.FrontDoor
* Allowed Enable-AzFrontDoorCustomDomainHttps''s SecretVersion parameter to be optional to support bring-your-own-certificate auto-rotation

Az.KeyVault
* Fixed a bug for ''Get-AzKeyVaultSecret -IncludeVersions'' when current version is disabled [#14740]
* Displayed error code and message when updating purged secret [#14800]

Az.RecoveryServices
* Azure Site Recovery support for Multiple IP per NIC for Azure to Azure provider.
* Azure Site Recovery support for SqlServerLicenseType for VMware to Azure and HyperV to Azure providers.
* Azure Site Recovery support for Availability set for VMware to Azure and HyperV to Azure providers.
* Azure Site Recovery support for TargetVmSize for VMware to Azure and HyperV to Azure providers.
* Azure Site Recovery support for ResourceTagging for VMware to Azure and HyperV to Azure providers.
* Azure Site Recovery support for Virtual Machine Scale Set for Azure to Azure provider.
* Added support for restoring unmanaged disks vm as managed disks.

Az.Resources
* Added parameter ''ObjectType'' for ''New-AzRoleAssignment''

Az.ResourceMover
* General availability of ''Az.ResourceMover'' module

Az.ServiceFabric
* Upgraded Managed Cluster commands to use Service Fabric Managed Cluster SDK version 1.0.0 which uses service fabric resource provider api-version 2021-05-01.
* ''New-AzServiceFabricManagedCluster'' add parameters UpgradeCadence and ZonalResiliency.
* ''New-AzServiceFabricManagedNodeType'' add parameters DiskType, VmUserAssignedIdentity, IsStateless and MultiplePlacementGroup.
* ''New-AzServiceFabricManagedClusterService'' and ''Set-AzServiceFabricManagedClusterService'' mark parameters for deprecation: InstanceCloseDelayDuration, DropSourceReplicaOnMove and ServiceDnsName. They are not supported.

Az.Storage
* Supported create/update storage account with KeyExpirationPeriod and SasExpirationPeriod
    - ''New-AzStorageAccount''
    - ''Set-AzStorageAccount''
* Supported create/update storage account with keyvault encryption and access keyvault with user assigned identity
    - ''New-AzStorageAccount''
    - ''Set-AzStorageAccount''
* Supported EdgeZone in create storage account
    - ''New-AzStorageAccount''
* Fixed an issue that delete immutable blob will prompt incorrect message.
    - ''Remove-AzStorageAccount''
* Allowed update Storage Account KeyVault properties by cleanup Keyversion to enable key auto rotation [#14769]
    - ''Set-AzStorageAccount''
* Added breaking change warning message for upcoming cmdlet breaking change
    - ''Remove-AzRmStorageShare''
'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

