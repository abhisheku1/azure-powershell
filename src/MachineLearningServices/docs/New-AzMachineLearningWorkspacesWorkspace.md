---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.machinelearningworkspaces/new-azmachinelearningworkspacesworkspace
schema: 2.0.0
---

# New-AzMachineLearningWorkspacesWorkspace

## SYNOPSIS
Creates or updates a workspace with the specified parameters.

## SYNTAX

### CreateExpanded (Default)
```
New-AzMachineLearningWorkspacesWorkspace -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-AllowPublicAccessWhenBehindVnet] [-AllowRecoverSoftDeletedWorkspace <AllowRecoverSoftDeletedWorkspace>]
 [-ApplicationInsight <String>] [-ContainerRegistry <String>] [-CosmoDbCollectionsThroughput <Int32>]
 [-Description <String>] [-DiscoveryUrl <String>] [-EncryptionCosmosDbResourceId <String>]
 [-EncryptionSearchAccountResourceId <String>] [-EncryptionStatus <EncryptionStatus>]
 [-EncryptionStorageAccountResourceId <String>] [-FriendlyName <String>] [-HbiWorkspace]
 [-IdentityType <ResourceIdentityType>] [-IdentityUserAssignedIdentity <Hashtable>]
 [-ImageBuildCompute <String>] [-KeyVault <String>] [-KeyVaultPropertyIdentityClientId <String>]
 [-KeyVaultPropertyKeyIdentifier <String>] [-KeyVaultPropertyKeyVaultArmId <String>] [-Location <String>]
 [-PrimaryUserAssignedIdentity <String>] [-PropertiesEncryptionIdentityUserAssignedIdentity <String>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SharedPrivateLinkResource <ISharedPrivateLinkResource[]>]
 [-SkuName <String>] [-SkuTier <String>] [-SoftDeleteEnabled <SoftDeleteEnabled>] [-StorageAccount <String>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-AzMachineLearningWorkspacesWorkspace -Name <String> -ResourceGroupName <String> -Parameter <IWorkspace>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### CreateViaIdentity
```
New-AzMachineLearningWorkspacesWorkspace -InputObject <IMachineLearningWorkspacesIdentity>
 -Parameter <IWorkspace> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### CreateViaIdentityExpanded
```
New-AzMachineLearningWorkspacesWorkspace -InputObject <IMachineLearningWorkspacesIdentity>
 [-AllowPublicAccessWhenBehindVnet] [-AllowRecoverSoftDeletedWorkspace <AllowRecoverSoftDeletedWorkspace>]
 [-ApplicationInsight <String>] [-ContainerRegistry <String>] [-CosmoDbCollectionsThroughput <Int32>]
 [-Description <String>] [-DiscoveryUrl <String>] [-EncryptionCosmosDbResourceId <String>]
 [-EncryptionSearchAccountResourceId <String>] [-EncryptionStatus <EncryptionStatus>]
 [-EncryptionStorageAccountResourceId <String>] [-FriendlyName <String>] [-HbiWorkspace]
 [-IdentityType <ResourceIdentityType>] [-IdentityUserAssignedIdentity <Hashtable>]
 [-ImageBuildCompute <String>] [-KeyVault <String>] [-KeyVaultPropertyIdentityClientId <String>]
 [-KeyVaultPropertyKeyIdentifier <String>] [-KeyVaultPropertyKeyVaultArmId <String>] [-Location <String>]
 [-PrimaryUserAssignedIdentity <String>] [-PropertiesEncryptionIdentityUserAssignedIdentity <String>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SharedPrivateLinkResource <ISharedPrivateLinkResource[]>]
 [-SkuName <String>] [-SkuTier <String>] [-SoftDeleteEnabled <SoftDeleteEnabled>] [-StorageAccount <String>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates a workspace with the specified parameters.

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -AllowPublicAccessWhenBehindVnet
The flag to indicate whether to allow public access when behind VNet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowRecoverSoftDeletedWorkspace
Allow a soft deleted workspace to be recovered

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.AllowRecoverSoftDeletedWorkspace
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApplicationInsight
ARM id of the application insights associated with this workspace.
This cannot be changed once the workspace has been created

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AsJob
Run the command as a job

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ContainerRegistry
ARM id of the container registry associated with this workspace.
This cannot be changed once the workspace has been created

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CosmoDbCollectionsThroughput
The throughput of the collections in cosmosdb database

```yaml
Type: System.Int32
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: System.Management.Automation.PSObject
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of this workspace.

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DiscoveryUrl
Url for the discovery service to identify regional endpoints for machine learning experimentation services

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionCosmosDbResourceId
The Bring-Your-Own cosmosdb account that customer brings to store data

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionSearchAccountResourceId
The Bring-Your-Own search account that customer brings to store index

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionStatus
Indicates whether or not the encryption is enabled for the workspace.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.EncryptionStatus
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EncryptionStorageAccountResourceId
The Bring-Your-Own storage account that customer brings to store data

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FriendlyName
The friendly name for this workspace.
This name in mutable

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HbiWorkspace
The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityType
The identity type.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ResourceIdentityType
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityUserAssignedIdentity
The user assigned identities associated with the resource.

```yaml
Type: System.Collections.Hashtable
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ImageBuildCompute
The compute name for image build

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.IMachineLearningWorkspacesIdentity
Parameter Sets: CreateViaIdentity, CreateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -KeyVault
ARM id of the key vault associated with this workspace.
This cannot be changed once the workspace has been created

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultPropertyIdentityClientId
For future use - The client id of the identity which will be used to access key vault.

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultPropertyKeyIdentifier
Key vault uri to access the encryption key.

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyVaultPropertyKeyVaultArmId
The ArmId of the keyVault where the customer owned encryption key is present.

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Specifies the location of the resource.

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of Azure Machine Learning workspace.

```yaml
Type: System.String
Parameter Sets: Create, CreateExpanded
Aliases: WorkspaceName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NoWait
Run the command asynchronously

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameter
An object that represents a machine learning workspace.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.IWorkspace
Parameter Sets: Create, CreateViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PrimaryUserAssignedIdentity
The user assigned identity resource id that represents the workspace identity.

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PropertiesEncryptionIdentityUserAssignedIdentity
The ArmId of the user assigned identity that will be used to access the customer managed key vault

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicNetworkAccess
Whether requests from Public Network are allowed.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.PublicNetworkAccess
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: System.String
Parameter Sets: Create, CreateExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SharedPrivateLinkResource
The list of shared private link resources in this workspace.
To construct, see NOTES section for SHAREDPRIVATELINKRESOURCE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.ISharedPrivateLinkResource[]
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuName
Name of the sku

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuTier
Tier of the sku like Basic or Enterprise

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SoftDeleteEnabled
create a workspace with soft delete capability

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.SoftDeleteEnabled
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccount
ARM id of the storage account associated with this workspace.
This cannot be changed once the workspace has been created

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: System.String
Parameter Sets: Create, CreateExpanded
Aliases:

Required: False
Position: Named
Default value: (Get-AzContext).Subscription.Id
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
Contains resource tags defined as key/value pairs.

```yaml
Type: System.Collections.Hashtable
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.IWorkspace

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.IMachineLearningWorkspacesIdentity

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.IWorkspace

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IMachineLearningWorkspacesIdentity>: Identity Parameter
  - `[ComputeName <String>]`: Name of the Azure Machine Learning compute.
  - `[ConnectionName <String>]`: Friendly name of the workspace connection
  - `[Id <String>]`: Resource identity path
  - `[Location <String>]`: The location for which resource usage is queried.
  - `[PrivateEndpointConnectionName <String>]`: The name of the private endpoint connection associated with the workspace
  - `[ResourceGroupName <String>]`: The name of the resource group. The name is case insensitive.
  - `[SubscriptionId <String>]`: The ID of the target subscription.
  - `[WorkspaceName <String>]`: Name of Azure Machine Learning workspace.

PARAMETER <IWorkspace>: An object that represents a machine learning workspace.
  - `[AllowPublicAccessWhenBehindVnet <Boolean?>]`: The flag to indicate whether to allow public access when behind VNet.
  - `[AllowRecoverSoftDeletedWorkspace <AllowRecoverSoftDeletedWorkspace?>]`: Allow a soft deleted workspace to be recovered
  - `[ApplicationInsight <String>]`: ARM id of the application insights associated with this workspace. This cannot be changed once the workspace has been created
  - `[ContainerRegistry <String>]`: ARM id of the container registry associated with this workspace. This cannot be changed once the workspace has been created
  - `[CosmoDbCollectionsThroughput <Int32?>]`: The throughput of the collections in cosmosdb database
  - `[Description <String>]`: The description of this workspace.
  - `[DiscoveryUrl <String>]`: Url for the discovery service to identify regional endpoints for machine learning experimentation services
  - `[EncryptionCosmosDbResourceId <String>]`: The Bring-Your-Own cosmosdb account that customer brings to store data
  - `[EncryptionSearchAccountResourceId <String>]`: The Bring-Your-Own search account that customer brings to store index
  - `[EncryptionStatus <EncryptionStatus?>]`: Indicates whether or not the encryption is enabled for the workspace.
  - `[EncryptionStorageAccountResourceId <String>]`: The Bring-Your-Own storage account that customer brings to store data
  - `[FriendlyName <String>]`: The friendly name for this workspace. This name in mutable
  - `[HbiWorkspace <Boolean?>]`: The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service
  - `[IdentityType <ResourceIdentityType?>]`: The identity type.
  - `[IdentityUserAssignedIdentity <IUserAssignedIdentities>]`: The user assigned identities associated with the resource.
    - `[(Any) <IUserAssignedIdentity>]`: This indicates any property can be added to this object.
  - `[ImageBuildCompute <String>]`: The compute name for image build
  - `[KeyVault <String>]`: ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created
  - `[KeyVaultPropertyIdentityClientId <String>]`: For future use - The client id of the identity which will be used to access key vault.
  - `[KeyVaultPropertyKeyIdentifier <String>]`: Key vault uri to access the encryption key.
  - `[KeyVaultPropertyKeyVaultArmId <String>]`: The ArmId of the keyVault where the customer owned encryption key is present.
  - `[Location <String>]`: Specifies the location of the resource.
  - `[NotebookInfoFqdn <String>]`: 
  - `[NotebookInfoResourceId <String>]`: the data plane resourceId that used to initialize notebook component
  - `[NotebookPreparationErrorMessage <String>]`: 
  - `[NotebookPreparationErrorStatusCode <Int32?>]`: 
  - `[PrimaryUserAssignedIdentity <String>]`: The user assigned identity resource id that represents the workspace identity.
  - `[PropertiesEncryptionIdentityUserAssignedIdentity <String>]`: The ArmId of the user assigned identity that will be used to access the customer managed key vault
  - `[PublicNetworkAccess <PublicNetworkAccess?>]`: Whether requests from Public Network are allowed.
  - `[SharedPrivateLinkResource <ISharedPrivateLinkResource[]>]`: The list of shared private link resources in this workspace.
    - `[GroupId <String>]`: The private link resource group id.
    - `[Name <String>]`: Unique name of the private link.
    - `[PrivateLinkResourceId <String>]`: The resource id that private link links to.
    - `[RequestMessage <String>]`: Request message.
    - `[Status <PrivateEndpointServiceConnectionStatus?>]`: Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  - `[SkuName <String>]`: Name of the sku
  - `[SkuTier <String>]`: Tier of the sku like Basic or Enterprise
  - `[SoftDeleteEnabled <SoftDeleteEnabled?>]`: create a workspace with soft delete capability
  - `[StorageAccount <String>]`: ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[Tag <IWorkspaceTags>]`: Contains resource tags defined as key/value pairs.
    - `[(Any) <String>]`: This indicates any property can be added to this object.

SHAREDPRIVATELINKRESOURCE <ISharedPrivateLinkResource[]>: The list of shared private link resources in this workspace.
  - `[GroupId <String>]`: The private link resource group id.
  - `[Name <String>]`: Unique name of the private link.
  - `[PrivateLinkResourceId <String>]`: The resource id that private link links to.
  - `[RequestMessage <String>]`: Request message.
  - `[Status <PrivateEndpointServiceConnectionStatus?>]`: Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.

## RELATED LINKS

