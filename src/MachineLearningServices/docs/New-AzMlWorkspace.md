---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.machinelearningworkspaces/new-azmlworkspace
schema: 2.0.0
---

# New-AzMlWorkspace

## SYNOPSIS
Creates or updates a workspace with the specified parameters.

## SYNTAX

### CreateExpanded (Default)
```
New-AzMlWorkspace -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-AllowPublicAccessWhenBehindVnet] [-ApplicationInsightId <String>] [-ContainerRegistryId <String>]
 [-CosmoDbCollectionsThroughput <Int32>] [-Description <String>] [-DiscoveryUrl <String>]
 [-EncryptionStatus <EncryptionStatus>] [-EncryptionUserAssignedIdentity <String>] [-FriendlyName <String>]
 [-HbiWorkspace] [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>]
 [-ImageBuildCompute <String>] [-KeyVaultArmId <String>] [-KeyVaultId <String>]
 [-KeyVaultIdentityClientId <String>] [-KeyVaultKeyIdentifier <String>] [-Location <String>]
 [-PrimaryUserAssignedIdentity <String>] [-PublicNetworkAccess <PublicNetworkAccess>]
 [-SharedPrivateLinkResource <ISharedPrivateLinkResource[]>] [-SkuCapacity <Int32>] [-SkuFamily <String>]
 [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-StorageAccountId <String>] [-Tag <Hashtable>]
 [-V1LegacyMode] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-AzMlWorkspace -Name <String> -ResourceGroupName <String> -Parameter <IWorkspace>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### CreateViaIdentity
```
New-AzMlWorkspace -InputObject <IMachineLearningWorkspacesIdentity> -Parameter <IWorkspace>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### CreateViaIdentityExpanded
```
New-AzMlWorkspace -InputObject <IMachineLearningWorkspacesIdentity> [-AllowPublicAccessWhenBehindVnet]
 [-ApplicationInsightId <String>] [-ContainerRegistryId <String>] [-CosmoDbCollectionsThroughput <Int32>]
 [-Description <String>] [-DiscoveryUrl <String>] [-EncryptionStatus <EncryptionStatus>]
 [-EncryptionUserAssignedIdentity <String>] [-FriendlyName <String>] [-HbiWorkspace]
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>]
 [-ImageBuildCompute <String>] [-KeyVaultArmId <String>] [-KeyVaultId <String>]
 [-KeyVaultIdentityClientId <String>] [-KeyVaultKeyIdentifier <String>] [-Location <String>]
 [-PrimaryUserAssignedIdentity <String>] [-PublicNetworkAccess <PublicNetworkAccess>]
 [-SharedPrivateLinkResource <ISharedPrivateLinkResource[]>] [-SkuCapacity <Int32>] [-SkuFamily <String>]
 [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-StorageAccountId <String>] [-Tag <Hashtable>]
 [-V1LegacyMode] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates a workspace with the specified parameters.

## EXAMPLES

### Example 1: Creates or updates a workspace with the specified parameters
```powershell
New-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-pwsh01 -Location eastus -ApplicationInsightId "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.insights/components/insightsmlworkspace" -KeyVaultId "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.keyvault/vaults/kmlworkspace" -StorageAccountId "/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourcegroups/ml-rg-test/providers/microsoft.storage/storageaccounts/storagemlworkspace01" -IdentityType 'SystemAssigned'
```

```output
Name              SystemDataCreatedAt  SystemDataCreatedBy  SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType Location ResourceGroupName
----              -------------------  -------------------  ----------------------- ------------------------ ------------------------ ---------------------------- -------- -----------------
mlworkspace-pwsh01 5/18/2022 6:33:49 AM v-diya@microsoft.com User                    5/18/2022 6:33:49 AM     v-diya@microsoft.com     User                         eastus   ml-rg-test
```

Creates or updates a workspace with the specified parameters

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

### -ApplicationInsightId
ARM id of the application insights associated with this workspace.

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

### -ContainerRegistryId
ARM id of the container registry associated with this workspace.

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

### -EncryptionUserAssignedIdentity
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
Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ManagedServiceIdentityType
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityUserAssigned
The set of user assigned identities associated with the resource.
The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}.
The dictionary values can be empty objects ({}) in requests.

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

### -KeyVaultArmId
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

### -KeyVaultId
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

### -KeyVaultIdentityClientId
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

### -KeyVaultKeyIdentifier
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
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IWorkspace
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
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ISharedPrivateLinkResource[]
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuCapacity
If the SKU supports scale out/in then the capacity integer should be included.
If scale out/in is not possible for the resource this may be omitted.

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

### -SkuFamily
If the service has different generations of hardware, for the same SKU, then that can be captured here.

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

### -SkuName
The name of the SKU.
Ex - P3.
It is typically a letter+number code

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

### -SkuSize
The SKU size.
When the name field is the combination of tier and some other value, this would be the standalone code.

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
This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.SkuTier
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountId
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

### -V1LegacyMode
Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.

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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IWorkspace

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.IMachineLearningWorkspacesIdentity

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IWorkspace

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IMachineLearningWorkspacesIdentity>: Identity Parameter
  - `[ComputeName <String>]`: Name of the Azure Machine Learning compute.
  - `[ConnectionName <String>]`: Friendly name of the workspace connection
  - `[DeploymentName <String>]`: Inference deployment identifier.
  - `[EndpointName <String>]`: Inference Endpoint name.
  - `[Id <String>]`: The name and identifier for the Job. This is case-sensitive.
  - `[Id1 <String>]`: Resource identity path
  - `[Location <String>]`: The location for which resource usage is queried.
  - `[Name <String>]`: Container name. This is case-sensitive.
  - `[PrivateEndpointConnectionName <String>]`: The name of the private endpoint connection associated with the workspace
  - `[ResourceGroupName <String>]`: The name of the resource group. The name is case insensitive.
  - `[SubscriptionId <String>]`: The ID of the target subscription.
  - `[Version <String>]`: Version identifier. This is case-sensitive.
  - `[WorkspaceName <String>]`: Name of Azure Machine Learning workspace.

PARAMETER <IWorkspace>: An object that represents a machine learning workspace.
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[AllowPublicAccessWhenBehindVnet <Boolean?>]`: The flag to indicate whether to allow public access when behind VNet.
  - `[ApplicationInsight <String>]`: ARM id of the application insights associated with this workspace.
  - `[ContainerRegistry <String>]`: ARM id of the container registry associated with this workspace.
  - `[CosmoDbCollectionsThroughput <Int32?>]`: The throughput of the collections in cosmosdb database
  - `[Description <String>]`: The description of this workspace.
  - `[DiscoveryUrl <String>]`: Url for the discovery service to identify regional endpoints for machine learning experimentation services
  - `[EncryptionStatus <EncryptionStatus?>]`: Indicates whether or not the encryption is enabled for the workspace.
  - `[FriendlyName <String>]`: The friendly name for this workspace. This name in mutable
  - `[HbiWorkspace <Boolean?>]`: The flag to signal HBI data in the workspace and reduce diagnostic data collected by the service
  - `[IdentityType <ManagedServiceIdentityType?>]`: Type of managed service identity (where both SystemAssigned and UserAssigned types are allowed).
  - `[IdentityUserAssignedIdentity <IUserAssignedIdentities>]`: The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
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
  - `[SkuCapacity <Int32?>]`: If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  - `[SkuFamily <String>]`: If the service has different generations of hardware, for the same SKU, then that can be captured here.
  - `[SkuName <String>]`: The name of the SKU. Ex - P3. It is typically a letter+number code
  - `[SkuSize <String>]`: The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. 
  - `[SkuTier <SkuTier?>]`: This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  - `[StorageAccount <String>]`: ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created
  - `[Tag <IWorkspaceTags>]`: Contains resource tags defined as key/value pairs.
    - `[(Any) <String>]`: This indicates any property can be added to this object.
  - `[V1LegacyMode <Boolean?>]`: Enabling v1_legacy_mode may prevent you from using features provided by the v2 API.

SHAREDPRIVATELINKRESOURCE <ISharedPrivateLinkResource[]>: The list of shared private link resources in this workspace.
  - `[GroupId <String>]`: The private link resource group id.
  - `[Name <String>]`: Unique name of the private link.
  - `[PrivateLinkResourceId <String>]`: The resource id that private link links to.
  - `[RequestMessage <String>]`: Request message.
  - `[Status <PrivateEndpointServiceConnectionStatus?>]`: Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.

## RELATED LINKS

