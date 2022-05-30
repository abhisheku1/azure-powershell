#### Get-AzMLServiceQuota

#### SYNOPSIS
Gets the currently assigned Workspace Quotas based on VMFamily.

#### SYNTAX

```powershell
Get-AzMLServiceQuota -Location <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Update-AzMLServiceQuota

#### SYNOPSIS
Update quota for each VM family in workspace.

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMLServiceQuota -Location <String> [-SubscriptionId <String>] [-Location1 <String>]
 [-Value <IQuotaBaseProperties[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMLServiceQuota -InputObject <IMachineLearningWorkspacesIdentity> [-Location <String>]
 [-Value <IQuotaBaseProperties[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMLServiceUsage

#### SYNOPSIS
Gets the current usage information as well as limits for AML resources for given subscription and location.

#### SYNTAX

```powershell
Get-AzMLServiceUsage -Location <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Get-AzMLServiceVMSize

#### SYNOPSIS
Returns supported VM Sizes in a location

#### SYNTAX

```powershell
Get-AzMLServiceVMSize -Location <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### New-AzMlWorkspace

#### SYNOPSIS
Creates or updates a workspace with the specified parameters.

#### SYNTAX

+ CreateExpanded (Default)
```powershell
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

#### Get-AzMlWorkspace

#### SYNOPSIS
Gets the properties of the specified machine learning workspace.

#### SYNTAX

+ List1 (Default)
```powershell
Get-AzMlWorkspace [-SubscriptionId <String[]>] [-Skip <String>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspace -Name <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspace -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ List
```powershell
Get-AzMlWorkspace -ResourceGroupName <String> [-SubscriptionId <String[]>] [-Skip <String>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspace

#### SYNOPSIS
Deletes a machine learning workspace.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspace -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspace -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Update-AzMlWorkspace

#### SYNOPSIS
Updates a machine learning workspace with the specified parameters.

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMlWorkspace -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-ApplicationInsightId <String>] [-ContainerRegistryId <String>] [-CosmoDbCollectionsThroughput <Int32>]
 [-Description <String>] [-FriendlyName <String>] [-IdentityType <ManagedServiceIdentityType>]
 [-IdentityUserAssigned <Hashtable>] [-ImageBuildCompute <String>] [-PrimaryUserAssignedIdentity <String>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SkuCapacity <Int32>] [-SkuFamily <String>] [-SkuName <String>]
 [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMlWorkspace -InputObject <IMachineLearningWorkspacesIdentity> [-ApplicationInsightId <String>]
 [-ContainerRegistryId <String>] [-CosmoDbCollectionsThroughput <Int32>] [-Description <String>]
 [-FriendlyName <String>] [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>]
 [-ImageBuildCompute <String>] [-PrimaryUserAssignedIdentity <String>]
 [-PublicNetworkAccess <PublicNetworkAccess>] [-SkuCapacity <Int32>] [-SkuFamily <String>] [-SkuName <String>]
 [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceAksObject

#### SYNOPSIS
Create an in-memory object for Aks.

#### SYNTAX

```powershell
New-AzMLWorkspaceAksObject [-AgentCount <Int32>] [-AgentVMSize <String>]
 [-AkNetworkingConfigurationDnsServiceIP <String>] [-AkNetworkingConfigurationDockerBridgeCidr <String>]
 [-AkNetworkingConfigurationServiceCidr <String>] [-AkNetworkingConfigurationSubnetId <String>]
 [-ClusterFqdn <String>] [-ClusterPurpose <ClusterPurpose>] [-Description <String>]
 [-DisableLocalAuth <Boolean>] [-LoadBalancerSubnet <String>] [-LoadBalancerType <LoadBalancerType>]
 [-ResourceId <String>] [-SslConfigurationCert <String>] [-SslConfigurationCname <String>]
 [-SslConfigurationKey <String>] [-SslConfigurationLeafDomainLabel <String>]
 [-SslConfigurationOverwriteExistingDomain <Boolean>] [-SslConfigurationStatus <SslConfigStatus>]
 [<CommonParameters>]
```


#### New-AzMLWorkspaceAmlComputeObject

#### SYNOPSIS
Create an in-memory object for AmlCompute.

#### SYNTAX

```powershell
New-AzMLWorkspaceAmlComputeObject [-Description <String>] [-DisableLocalAuth <Boolean>]
 [-EnableNodePublicIP <Boolean>] [-IsolatedNetwork <Boolean>] [-OSType <OSType>] [-PropertyBag <IAny>]
 [-RemoteLoginPortPublicAccess <RemoteLoginPortPublicAccess>] [-ResourceId <String>]
 [-ScaleSettingMaxNodeCount <Int32>] [-ScaleSettingMinNodeCount <Int32>]
 [-ScaleSettingNodeIdleTimeBeforeScaleDown <TimeSpan>] [-SubnetId <String>]
 [-UserAccountCredentialsAdminUserName <String>] [-UserAccountCredentialsAdminUserPassword <String>]
 [-UserAccountCredentialsAdminUserSshPublicKey <String>] [-VirtualMachineImageId <String>]
 [-VMPriority <VMPriority>] [-VMSize <String>] [<CommonParameters>]
```


#### New-AzMlWorkspaceBatchDeployment

#### SYNOPSIS
Creates/updates a batch inference deployment (asynchronous).

#### SYNTAX

```powershell
New-AzMlWorkspaceBatchDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> -Location <String> [-SubscriptionId <String>] [-CodeId <String>]
 [-CodeScoringScript <String>] [-ComputeId <String>] [-Description <String>]
 [-EndpointDeploymentProperties <Hashtable>] [-EnvironmentId <String>] [-EnvironmentVariable <Hashtable>]
 [-ErrorThreshold <Int32>] [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>]
 [-Kind <String>] [-LoggingLevel <BatchLoggingLevel>] [-MaxConcurrencyPerInstance <Int32>]
 [-MiniBatchSize <Int64>] [-ModelReferenceType <ReferenceType>] [-OutputAction <BatchOutputAction>]
 [-OutputFileName <String>] [-ResourceInstanceCount <Int32>] [-ResourceInstanceType <String>]
 [-ResourceProperty <Hashtable>] [-RetryMax <Int32>] [-RetryTimeout <TimeSpan>] [-SkuCapacity <Int32>]
 [-SkuFamily <String>] [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceBatchDeployment

#### SYNOPSIS
Gets a batch inference deployment by id.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceBatchDeployment -EndpointName <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-OrderBy <String>] [-Skip <String>] [-Top <Int32>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceBatchDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceBatchDeployment -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspaceBatchDeployment

#### SYNOPSIS
Delete Batch Inference deployment (asynchronous).

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceBatchDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceBatchDeployment -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Update-AzMlWorkspaceBatchDeployment

#### SYNOPSIS
Update a batch inference deployment (asynchronous).

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMlWorkspaceBatchDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-Description <String>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMlWorkspaceBatchDeployment -InputObject <IMachineLearningWorkspacesIdentity> [-Description <String>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceBatchEndpoint

#### SYNOPSIS
Creates a batch inference endpoint (asynchronous).

#### SYNTAX

```powershell
New-AzMlWorkspaceBatchEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -AuthMode <EndpointAuthMode> -Location <String> [-SubscriptionId <String>] [-DefaultDeploymentName <String>]
 [-Description <String>] [-EndpointPropertiesBaseProperty <Hashtable>]
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>] [-Kind <String>]
 [-PrimaryKey <String>] [-SecondaryKey <String>] [-SkuCapacity <Int32>] [-SkuFamily <String>]
 [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceBatchEndpoint

#### SYNOPSIS
Gets a batch inference endpoint by name.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceBatchEndpoint -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-Count <Int32>] [-Skip <String>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceBatchEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceBatchEndpoint -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceBatchEndpoint

#### SYNOPSIS
Delete Batch Inference Endpoint (asynchronous).

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceBatchEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceBatchEndpoint -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Update-AzMlWorkspaceBatchEndpoint

#### SYNOPSIS
Update a batch inference endpoint (asynchronous).

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMlWorkspaceBatchEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMlWorkspaceBatchEndpoint -InputObject <IMachineLearningWorkspacesIdentity>
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceBatchEndpointKey

#### SYNOPSIS
Lists batch Inference Endpoint keys.

#### SYNTAX

```powershell
Get-AzMlWorkspaceBatchEndpointKey -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceCodeContainer

#### SYNOPSIS
Create or update container.

#### SYNTAX

```powershell
New-AzMlWorkspaceCodeContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-Description <String>] [-IsArchived] [-ResourceBaseProperty <Hashtable>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceCodeContainer

#### SYNOPSIS
Get container.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceCodeContainer -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-Skip <String>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceCodeContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceCodeContainer -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceCodeContainer

#### SYNOPSIS
Delete container.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceCodeContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceCodeContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceCodeVersion

#### SYNOPSIS
Create or update version.

#### SYNTAX

```powershell
New-AzMlWorkspaceCodeVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-CodeUri <String>] [-Description <String>] [-IsAnonymou]
 [-IsArchived] [-ResourceBaseProperty <Hashtable>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceCodeVersion

#### SYNOPSIS
Get version.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceCodeVersion -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-OrderBy <String>] [-Skip <String>] [-Top <Int32>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceCodeVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceCodeVersion -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceCodeVersion

#### SYNOPSIS
Delete version.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceCodeVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceCodeVersion -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceCommandJobObject

#### SYNOPSIS
Create an in-memory object for CommandJob.

#### SYNTAX

```powershell
New-AzMLWorkspaceCommandJobObject -Command <String> -EnvironmentId <String> [-CodeId <String>]
 [-ComputeId <String>] [-Description <String>] [-DisplayName <String>] [-DistributionType <DistributionType>]
 [-EnvironmentVariable <Hashtable>] [-ExperimentName <String>] [-IdentityType <IdentityConfigurationType>]
 [-Input <ICommandJobInputs>] [-IsArchived <Boolean>] [-LimitTimeout <TimeSpan>]
 [-Output <ICommandJobOutputs>] [-Property <IResourceBaseProperties>] [-ResourceInstanceCount <Int32>]
 [-ResourceInstanceType <String>] [-ResourceProperty <IResourceConfigurationProperties>]
 [-ServiceEndpoint <String>] [-ServicePort <Int32>] [-ServiceProperty <IJobServiceProperties>]
 [-ServiceType <String>] [-Tag <IResourceBaseTags>] [<CommonParameters>]
```


#### New-AzMlWorkspaceComponentContainer

#### SYNOPSIS
Create or update container.

#### SYNTAX

```powershell
New-AzMlWorkspaceComponentContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-Description <String>] [-IsArchived] [-ResourceBaseProperty <Hashtable>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceComponentContainer

#### SYNOPSIS
Get container.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceComponentContainer -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-ListViewType <ListViewType>] [-Skip <String>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceComponentContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceComponentContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspaceComponentContainer

#### SYNOPSIS
Delete container.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceComponentContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceComponentContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceComponentVersion

#### SYNOPSIS
Create or update version.

#### SYNTAX

```powershell
New-AzMlWorkspaceComponentVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-ComponentSpec <IAny>] [-Description <String>]
 [-IsAnonymou] [-IsArchived] [-ResourceBaseProperty <Hashtable>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceComponentVersion

#### SYNOPSIS
Get version.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceComponentVersion -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-ListViewType <ListViewType>] [-OrderBy <String>] [-Skip <String>]
 [-Top <Int32>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceComponentVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceComponentVersion -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspaceComponentVersion

#### SYNOPSIS
Delete version.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceComponentVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceComponentVersion -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceCompute

#### SYNOPSIS
Creates or updates compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.
If your intent is to create a new compute, do a GET first to verify that it does not exist yet.

#### SYNTAX

```powershell
New-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-Compute <ICompute>] [-IdentityType <ManagedServiceIdentityType>]
 [-IdentityUserAssigned <Hashtable>] [-Location <String>] [-SkuCapacity <Int32>] [-SkuFamily <String>]
 [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceCompute

#### SYNOPSIS
Gets compute definition by its name.
Any secrets (storage keys, service credentials, etc) are not returned - use 'keys' nested resource to get them.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceCompute -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-Skip <String>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceCompute -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceCompute

#### SYNOPSIS
Deletes specified Machine Learning compute.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -UnderlyingResourceAction <UnderlyingResourceAction> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceCompute -InputObject <IMachineLearningWorkspacesIdentity>
 -UnderlyingResourceAction <UnderlyingResourceAction> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Restart-AzMlWorkspaceCompute

#### SYNOPSIS
Posts a restart action to a compute instance

#### SYNTAX

+ Restart (Default)
```powershell
Restart-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ RestartViaIdentity
```powershell
Restart-AzMlWorkspaceCompute -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Start-AzMlWorkspaceCompute

#### SYNOPSIS
Posts a start action to a compute instance

#### SYNTAX

+ Start (Default)
```powershell
Start-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ StartViaIdentity
```powershell
Start-AzMlWorkspaceCompute -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Stop-AzMlWorkspaceCompute

#### SYNOPSIS
Posts a stop action to a compute instance

#### SYNTAX

+ Stop (Default)
```powershell
Stop-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ StopViaIdentity
```powershell
Stop-AzMlWorkspaceCompute -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Update-AzMlWorkspaceCompute

#### SYNOPSIS
Updates properties of a compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-MaxNodeCount <Int32>] [-MinNodeCount <Int32>]
 [-NodeIdleTimeBeforeScaleDown <TimeSpan>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMlWorkspaceCompute -InputObject <IMachineLearningWorkspacesIdentity> [-MaxNodeCount <Int32>]
 [-MinNodeCount <Int32>] [-NodeIdleTimeBeforeScaleDown <TimeSpan>] [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceComputeInstanceObject

#### SYNOPSIS
Create an in-memory object for ComputeInstance.

#### SYNTAX

```powershell
New-AzMLWorkspaceComputeInstanceObject [-ApplicationSharingPolicy <ApplicationSharingPolicy>]
 [-AssignedUserObjectId <String>] [-AssignedUserTenantId <String>]
 [-AuthorizationType <ComputeInstanceAuthorizationType>] [-CreationScriptArgument <String>]
 [-CreationScriptData <String>] [-CreationScriptSource <String>] [-CreationScriptTimeout <String>]
 [-Description <String>] [-DisableLocalAuth <Boolean>] [-EnableNodePublicIP <Boolean>]
 [-LastOperationName <OperationName>] [-LastOperationStatus <OperationStatus>] [-LastOperationTime <DateTime>]
 [-LastOperationTrigger <OperationTrigger>] [-ResourceId <String>]
 [-ScheduleComputeStartStop <IComputeStartStopSchedule[]>] [-SshSettingAdminPublicKey <String>]
 [-SshSettingSshPublicAccess <SshPublicAccess>] [-StartupScriptArgument <String>]
 [-StartupScriptData <String>] [-StartupScriptSource <String>] [-StartupScriptTimeout <String>]
 [-SubnetId <String>] [-VersionRuntime <String>] [-VMSize <String>] [<CommonParameters>]
```


#### Get-AzMlWorkspaceComputeKey

#### SYNOPSIS
Gets secrets related to Machine Learning compute (storage keys, service credentials, etc).

#### SYNTAX

```powershell
Get-AzMlWorkspaceComputeKey -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceComputeNode

#### SYNOPSIS
Get the details (e.g IP address, port etc) of all the compute nodes in the compute.

#### SYNTAX

```powershell
Get-AzMlWorkspaceComputeNode -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceConnection

#### SYNOPSIS


#### SYNTAX

```powershell
New-AzMlWorkspaceConnection -ConnectionName <String> -ResourceGroupName <String> -WorkspaceName <String>
 -AuthType <ConnectionAuthType> [-SubscriptionId <String>] [-Category <ConnectionCategory>] [-Target <String>]
 [-Value <String>] [-ValueFormat <ValueFormat>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```


#### Get-AzMlWorkspaceConnection

#### SYNOPSIS


#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceConnection -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-Category <String>] [-Target <String>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceConnection -ConnectionName <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceConnection -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceConnection

#### SYNOPSIS


#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceConnection -ConnectionName <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceConnection -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceCustomModelJobInputObject

#### SYNOPSIS
Create an in-memory object for CustomModelJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceCustomModelJobInputObject -Type <JobInputType> -Uri <String> [-Description <String>]
 [-Mode <InputDeliveryMode>] [<CommonParameters>]
```


#### New-AzMLWorkspaceCustomModelJobOutputObject

#### SYNOPSIS
Create an in-memory object for CustomModelJobOutput.

#### SYNTAX

```powershell
New-AzMLWorkspaceCustomModelJobOutputObject -Type <JobOutputType> [-Description <String>]
 [-Mode <OutputDeliveryMode>] [-Uri <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceDatabricksObject

#### SYNOPSIS
Create an in-memory object for Databricks.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatabricksObject [-AccessToken <String>] [-Description <String>]
 [-DisableLocalAuth <Boolean>] [-ResourceId <String>] [-WorkspaceUrl <String>] [<CommonParameters>]
```


#### New-AzMlWorkspaceDataContainer

#### SYNOPSIS
Create or update container.

#### SYNTAX

```powershell
New-AzMlWorkspaceDataContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -DataType <DataType> [-SubscriptionId <String>] [-Description <String>] [-IsArchived]
 [-ResourceBaseProperty <Hashtable>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```


#### Get-AzMlWorkspaceDataContainer

#### SYNOPSIS
Get container.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceDataContainer -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-ListViewType <ListViewType>] [-Skip <String>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceDataContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceDataContainer -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceDataContainer

#### SYNOPSIS
Delete container.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceDataContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceDataContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceDataFactoryObject

#### SYNOPSIS
Create an in-memory object for DataFactory.

#### SYNTAX

```powershell
New-AzMLWorkspaceDataFactoryObject [-Description <String>] [-DisableLocalAuth <Boolean>]
 [-ResourceId <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceDataLakeAnalyticsObject

#### SYNOPSIS
Create an in-memory object for DataLakeAnalytics.

#### SYNTAX

```powershell
New-AzMLWorkspaceDataLakeAnalyticsObject [-DataLakeStoreAccountName <String>] [-Description <String>]
 [-DisableLocalAuth <Boolean>] [-ResourceId <String>] [<CommonParameters>]
```


#### New-AzMlWorkspaceDatastore

#### SYNOPSIS
Create or update datastore.

#### SYNTAX

```powershell
New-AzMlWorkspaceDatastore -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -Datastore <IDatastoreProperties> [-SubscriptionId <String>] [-SkipValidation] [-DefaultProfile <PSObject>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceDatastore

#### SYNOPSIS
Get datastore.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceDatastore -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-Count <Int32>] [-IsDefault] [-OrderBy <String>] [-OrderByAsc] [-SearchName <String[]>]
 [-SearchText <String>] [-Skip <String>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceDatastore -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceDatastore -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceDatastore

#### SYNOPSIS
Delete datastore.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceDatastore -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceDatastore -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreBlobObject

#### SYNOPSIS
Create an in-memory object for AzureBlobDatastore.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreBlobObject -Credentials <IDatastoreCredentials> [-AccountName <String>]
 [-ContainerName <String>] [-Description <String>] [-Endpoint <String>] [-Property <IResourceBaseProperties>]
 [-Protocol <String>] [-ServiceDataAccessAuthIdentity <ServiceDataAccessAuthIdentity>]
 [-Tag <IResourceBaseTags>] [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreCredentialsObject

#### SYNOPSIS
Create an in-memory object for CertificateDatastoreCredentials.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreCredentialsObject -Certificate <String> -ClientId <String> -TenantId <String>
 -Thumbprint <String> [-AuthorityUrl <String>] [-ResourceUrl <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreDataLakeGen1Object

#### SYNOPSIS
Create an in-memory object for AzureDataLakeGen1Datastore.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreDataLakeGen1Object -Credentials <IDatastoreCredentials> -StoreName <String>
 [-Description <String>] [-Property <IResourceBaseProperties>]
 [-ServiceDataAccessAuthIdentity <ServiceDataAccessAuthIdentity>] [-Tag <IResourceBaseTags>]
 [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreDataLakeGen2Object

#### SYNOPSIS
Create an in-memory object for AzureDataLakeGen2Datastore.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreDataLakeGen2Object -AccountName <String> -Credentials <IDatastoreCredentials>
 -Filesystem <String> [-Description <String>] [-Endpoint <String>] [-Property <IResourceBaseProperties>]
 [-Protocol <String>] [-ServiceDataAccessAuthIdentity <ServiceDataAccessAuthIdentity>]
 [-Tag <IResourceBaseTags>] [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreFileObject

#### SYNOPSIS
Create an in-memory object for AzureFileDatastore.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreFileObject -AccountName <String> -FileShareName <String> [-Description <String>]
 [-Endpoint <String>] [-Property <IResourceBaseProperties>] [-Protocol <String>]
 [-ServiceDataAccessAuthIdentity <ServiceDataAccessAuthIdentity>] [-Tag <IResourceBaseTags>]
 [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreKeyCredentialObject

#### SYNOPSIS
Create an in-memory object for AccountKeyDatastoreCredentials.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreKeyCredentialObject -Key <String> [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreNoneCredentialsObject

#### SYNOPSIS
Create an in-memory object for NoneDatastoreCredentials.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreNoneCredentialsObject [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreSasCredentialsObject

#### SYNOPSIS
Create an in-memory object for SasDatastoreCredentials.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreSasCredentialsObject -SasToken <String> [<CommonParameters>]
```


#### Get-AzMlWorkspaceDatastoreSecret

#### SYNOPSIS
Get datastore secrets.

#### SYNTAX

```powershell
Get-AzMlWorkspaceDatastoreSecret -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceDatastoreServicePrincipalCredentialsObject

#### SYNOPSIS
Create an in-memory object for ServicePrincipalDatastoreCredentials.

#### SYNTAX

```powershell
New-AzMLWorkspaceDatastoreServicePrincipalCredentialsObject -ClientId <String> -ClientSecret <String>
 -TenantId <String> [-AuthorityUrl <String>] [-ResourceUrl <String>] [<CommonParameters>]
```


#### New-AzMlWorkspaceDataVersion

#### SYNOPSIS
Create or update version.

#### SYNTAX

```powershell
New-AzMlWorkspaceDataVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> -DataType <DataType> -DataUri <String> [-SubscriptionId <String>]
 [-Description <String>] [-IsAnonymou] [-IsArchived] [-ResourceBaseProperty <Hashtable>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceDataVersion

#### SYNOPSIS
Get version.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceDataVersion -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-ListViewType <ListViewType>] [-OrderBy <String>] [-Skip <String>]
 [-Tag <String>] [-Top <Int32>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceDataVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceDataVersion -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceDataVersion

#### SYNOPSIS
Delete version.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceDataVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceDataVersion -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Invoke-AzMlWorkspaceDiagnose

#### SYNOPSIS
Diagnose workspace setup issue.

#### SYNTAX

+ DiagnoseExpanded (Default)
```powershell
Invoke-AzMlWorkspaceDiagnose -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-ApplicationInsightId <Hashtable>] [-ContainerRegistryId <Hashtable>] [-DnsResolution <Hashtable>]
 [-KeyVaultId <Hashtable>] [-Nsg <Hashtable>] [-Others <Hashtable>] [-ResourceLock <Hashtable>]
 [-StorageAccount <Hashtable>] [-Udr <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ DiagnoseViaIdentityExpanded
```powershell
Invoke-AzMlWorkspaceDiagnose -InputObject <IMachineLearningWorkspacesIdentity>
 [-ApplicationInsightId <Hashtable>] [-ContainerRegistryId <Hashtable>] [-DnsResolution <Hashtable>]
 [-KeyVaultId <Hashtable>] [-Nsg <Hashtable>] [-Others <Hashtable>] [-ResourceLock <Hashtable>]
 [-StorageAccount <Hashtable>] [-Udr <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceEnvironmentContainer

#### SYNOPSIS
Create or update container.

#### SYNTAX

```powershell
New-AzMlWorkspaceEnvironmentContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-Description <String>] [-IsArchived] [-ResourceBaseProperty <Hashtable>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceEnvironmentContainer

#### SYNOPSIS
Get container.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceEnvironmentContainer -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-ListViewType <ListViewType>] [-Skip <String>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceEnvironmentContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceEnvironmentContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspaceEnvironmentContainer

#### SYNOPSIS
Delete container.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceEnvironmentContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceEnvironmentContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceEnvironmentVersion

#### SYNOPSIS
Creates or updates an EnvironmentVersion.

#### SYNTAX

```powershell
New-AzMlWorkspaceEnvironmentVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-BuildContextUri <String>]
 [-BuildDockerfilePath <String>] [-CondaFile <String>] [-Description <String>] [-Image <String>] [-IsAnonymou]
 [-IsArchived] [-LivenessRoutePath <String>] [-LivenessRoutePort <Int32>] [-OSType <OperatingSystemType>]
 [-ReadinessRoutePath <String>] [-ReadinessRoutePort <Int32>] [-ResourceBaseProperty <Hashtable>]
 [-ScoringRoutePath <String>] [-ScoringRoutePort <Int32>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceEnvironmentVersion

#### SYNOPSIS
Get version.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceEnvironmentVersion -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-ListViewType <ListViewType>] [-OrderBy <String>] [-Skip <String>]
 [-Top <Int32>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceEnvironmentVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceEnvironmentVersion -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspaceEnvironmentVersion

#### SYNOPSIS
Delete version.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceEnvironmentVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceEnvironmentVersion -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceFeature

#### SYNOPSIS
Lists all enabled features for a workspace

#### SYNTAX

```powershell
Get-AzMlWorkspaceFeature -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### New-AzMLWorkspaceHDInsightObject

#### SYNOPSIS
Create an in-memory object for HDInsight.

#### SYNTAX

```powershell
New-AzMLWorkspaceHDInsightObject [-Address <String>] [-AdministratorAccountPassword <String>]
 [-AdministratorAccountPrivateKeyData <String>] [-AdministratorAccountPublicKeyData <String>]
 [-AdministratorAccountUsername <String>] [-Description <String>] [-DisableLocalAuth <Boolean>]
 [-ResourceId <String>] [-SshPort <Int32>] [<CommonParameters>]
```


#### New-AzMlWorkspaceJob

#### SYNOPSIS
Creates and executes a Job.

#### SYNTAX

```powershell
New-AzMlWorkspaceJob -Name <String> -ResourceGroupName <String> -WorkspaceName <String> -Body <IJobBase>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceJob

#### SYNOPSIS
Gets a Job by name/id.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceJob -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-JobType <String>] [-ListViewType <ListViewType>] [-Skip <String>] [-Tag <String>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceJob -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceJob -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceJob

#### SYNOPSIS
Deletes a Job (asynchronous).

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceJob -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceJob -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Stop-AzMlWorkspaceJob

#### SYNOPSIS
Cancels a Job (asynchronous).

#### SYNTAX

+ Cancel (Default)
```powershell
Stop-AzMlWorkspaceJob -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ CancelViaIdentity
```powershell
Stop-AzMlWorkspaceJob -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceJobServiceObject

#### SYNOPSIS
Create an in-memory object for JobService.

#### SYNTAX

```powershell
New-AzMLWorkspaceJobServiceObject [-Endpoint <String>] [-Port <Int32>] [-Property <IJobServiceProperties>]
 [-Type <String>] [<CommonParameters>]
```


#### Get-AzMlWorkspaceKey

#### SYNOPSIS
Lists all the keys associated with this workspace.
This includes keys for the storage account, app insights and password for container registry

#### SYNTAX

```powershell
Get-AzMlWorkspaceKey -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Sync-AzMlWorkspaceKey

#### SYNOPSIS
Resync all the keys associated with this workspace.
This includes keys for the storage account, app insights and password for container registry

#### SYNTAX

+ Resync (Default)
```powershell
Sync-AzMlWorkspaceKey -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ ResyncViaIdentity
```powershell
Sync-AzMlWorkspaceKey -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceKubernetesObject

#### SYNOPSIS
Create an in-memory object for Kubernetes.

#### SYNTAX

```powershell
New-AzMLWorkspaceKubernetesObject [-DefaultInstanceType <String>] [-Description <String>]
 [-DisableLocalAuth <Boolean>] [-ExtensionInstanceReleaseTrain <String>] [-ExtensionPrincipalId <String>]
 [-InstanceLimit <Hashtable>] [-InstanceNodeSelector <Hashtable>] [-InstanceRequest <Hashtable>]
 [-Namespace <String>] [-RelayConnectionString <String>] [-ResourceId <String>]
 [-ServiceBusConnectionString <String>] [-VcName <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceLiteralJobInputObject

#### SYNOPSIS
Create an in-memory object for LiteralJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceLiteralJobInputObject -Type <JobInputType> -Value <String> [-Description <String>]
 [<CommonParameters>]
```


#### New-AzMLWorkspaceMLFlowModelJobInputObject

#### SYNOPSIS
Create an in-memory object for MLFlowModelJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceMLFlowModelJobInputObject -Type <JobInputType> -Uri <String> [-Description <String>]
 [-Mode <InputDeliveryMode>] [<CommonParameters>]
```


#### New-AzMLWorkspaceMLFlowModelJobOutputObject

#### SYNOPSIS
Create an in-memory object for MLFlowModelJobOutput.

#### SYNTAX

```powershell
New-AzMLWorkspaceMLFlowModelJobOutputObject -Type <JobOutputType> [-Description <String>]
 [-Mode <OutputDeliveryMode>] [-Uri <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceMLTableJobInputObject

#### SYNOPSIS
Create an in-memory object for MLTableJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceMLTableJobInputObject -Type <JobInputType> -Uri <String> [-Description <String>]
 [-Mode <InputDeliveryMode>] [<CommonParameters>]
```


#### New-AzMLWorkspaceMLTableJobOutputObject

#### SYNOPSIS
Create an in-memory object for MLTableJobOutput.

#### SYNTAX

```powershell
New-AzMLWorkspaceMLTableJobOutputObject -Type <JobOutputType> [-Description <String>]
 [-Mode <OutputDeliveryMode>] [-Uri <String>] [<CommonParameters>]
```


#### New-AzMlWorkspaceModelContainer

#### SYNOPSIS
Create or update container.

#### SYNTAX

```powershell
New-AzMlWorkspaceModelContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-Description <String>] [-IsArchived] [-ResourceBaseProperty <Hashtable>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceModelContainer

#### SYNOPSIS
Get container.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceModelContainer -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-Count <Int32>] [-ListViewType <ListViewType>] [-Skip <String>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceModelContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceModelContainer -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceModelContainer

#### SYNOPSIS
Delete container.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceModelContainer -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceModelContainer -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceModelVersion

#### SYNOPSIS
Create or update version.

#### SYNTAX

```powershell
New-AzMlWorkspaceModelVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-Description <String>] [-Flavor <Hashtable>]
 [-IsAnonymou] [-IsArchived] [-JobName <String>] [-ModelType <String>] [-ModelUri <String>]
 [-ResourceBaseProperty <Hashtable>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```


#### Get-AzMlWorkspaceModelVersion

#### SYNOPSIS
Get version.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceModelVersion -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-Version <String>] [-Description <String>] [-Feed <String>]
 [-ListViewType <ListViewType>] [-Offset <Int32>] [-OrderBy <String>] [-Property <String>] [-Skip <String>]
 [-Tag <String>] [-Top <Int32>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceModelVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceModelVersion -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceModelVersion

#### SYNOPSIS
Delete version.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceModelVersion -Name <String> -ResourceGroupName <String> -Version <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceModelVersion -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Invoke-AzMlWorkspaceNotebook

#### SYNOPSIS
Prepare a notebook.

#### SYNTAX

+ Prepare (Default)
```powershell
Invoke-AzMlWorkspaceNotebook -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ PrepareViaIdentity
```powershell
Invoke-AzMlWorkspaceNotebook -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceNotebookAccessToken

#### SYNOPSIS
return notebook access token and refresh token

#### SYNTAX

```powershell
Get-AzMlWorkspaceNotebookAccessToken -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceNotebookKey

#### SYNOPSIS
List keys of a notebook.

#### SYNTAX

```powershell
Get-AzMlWorkspaceNotebookKey -ResourceGroupName <String> -WorkspaceName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceOnlineDeployment

#### SYNOPSIS
Create or update Inference Endpoint Deployment (asynchronous).

#### SYNTAX

```powershell
New-AzMlWorkspaceOnlineDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> -EndpointComputeType <EndpointComputeType> -Location <String>
 [-SubscriptionId <String>] [-AppInsightsEnabled] [-CodeId <String>] [-CodeScoringScript <String>]
 [-Description <String>] [-EndpointDeploymentPropertiesBaseProperty <Hashtable>] [-EnvironmentId <String>]
 [-EnvironmentVariable <Hashtable>] [-IdentityType <ManagedServiceIdentityType>]
 [-IdentityUserAssigned <Hashtable>] [-InstanceType <String>] [-Kind <String>]
 [-LivenessProbeFailureThreshold <Int32>] [-LivenessProbeInitialDelay <TimeSpan>]
 [-LivenessProbePeriod <TimeSpan>] [-LivenessProbeSuccessThreshold <Int32>] [-LivenessProbeTimeout <TimeSpan>]
 [-Model <String>] [-ModelMountPath <String>] [-ReadinessProbeFailureThreshold <Int32>]
 [-ReadinessProbeInitialDelay <TimeSpan>] [-ReadinessProbePeriod <TimeSpan>]
 [-ReadinessProbeSuccessThreshold <Int32>] [-ReadinessProbeTimeout <TimeSpan>]
 [-RequestMaxConcurrentPerInstance <Int32>] [-RequestMaxQueueWait <TimeSpan>] [-RequestTimeout <TimeSpan>]
 [-ScaleType <ScaleType>] [-SkuCapacity <Int32>] [-SkuFamily <String>] [-SkuName <String>] [-SkuSize <String>]
 [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```


#### Get-AzMlWorkspaceOnlineDeployment

#### SYNOPSIS
Get Inference Deployment Deployment.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceOnlineDeployment -EndpointName <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-OrderBy <String>] [-Skip <String>] [-Top <Int32>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceOnlineDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceOnlineDeployment -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### Remove-AzMlWorkspaceOnlineDeployment

#### SYNOPSIS
Delete Inference Endpoint Deployment (asynchronous).

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceOnlineDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceOnlineDeployment -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Update-AzMlWorkspaceOnlineDeployment

#### SYNOPSIS
Update Online Deployment (asynchronous).

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMlWorkspaceOnlineDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-SkuCapacity <Int32>] [-SkuFamily <String>]
 [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMlWorkspaceOnlineDeployment -InputObject <IMachineLearningWorkspacesIdentity> [-SkuCapacity <Int32>]
 [-SkuFamily <String>] [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceOnlineDeploymentLog

#### SYNOPSIS
Polls an Endpoint operation.

#### SYNTAX

```powershell
Get-AzMlWorkspaceOnlineDeploymentLog -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-ContainerType <ContainerType>] [-Tail <Int32>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceOnlineDeploymentSku

#### SYNOPSIS
List Inference Endpoint Deployment Skus.

#### SYNTAX

```powershell
Get-AzMlWorkspaceOnlineDeploymentSku -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String[]>] [-Count <Int32>] [-Skip <String>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### New-AzMlWorkspaceOnlineEndpoint

#### SYNOPSIS
Create or update Online Endpoint (asynchronous).

#### SYNTAX

```powershell
New-AzMlWorkspaceOnlineEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -AuthMode <EndpointAuthMode> -Location <String> [-SubscriptionId <String>] [-Compute <String>]
 [-Description <String>] [-EndpointPropertiesBaseProperty <Hashtable>]
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>] [-KeyPrimaryKey <String>]
 [-KeySecondaryKey <String>] [-Kind <String>] [-SkuCapacity <Int32>] [-SkuFamily <String>] [-SkuName <String>]
 [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>] [-Traffic <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceOnlineEndpoint

#### SYNOPSIS
Get Online Endpoint.

#### SYNTAX

+ List (Default)
```powershell
Get-AzMlWorkspaceOnlineEndpoint -ResourceGroupName <String> -WorkspaceName <String> [-Name <String>]
 [-SubscriptionId <String[]>] [-ComputeType <EndpointComputeType>] [-Count <Int32>] [-OrderBy <OrderString>]
 [-Property <String>] [-Skip <String>] [-Tag <String>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzMlWorkspaceOnlineEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceOnlineEndpoint -InputObject <IMachineLearningWorkspacesIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```


#### Remove-AzMlWorkspaceOnlineEndpoint

#### SYNOPSIS
Delete Online Endpoint (asynchronous).

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzMlWorkspaceOnlineEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzMlWorkspaceOnlineEndpoint -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Update-AzMlWorkspaceOnlineEndpoint

#### SYNOPSIS
Update Online Endpoint (asynchronous).

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzMlWorkspaceOnlineEndpoint -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String>] [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzMlWorkspaceOnlineEndpoint -InputObject <IMachineLearningWorkspacesIdentity>
 [-IdentityType <ManagedServiceIdentityType>] [-IdentityUserAssigned <Hashtable>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMlWorkspaceOnlineEndpointKey

#### SYNOPSIS
Regenerate EndpointAuthKeys for an Endpoint using Key-based authentication (asynchronous).

#### SYNTAX

```powershell
New-AzMlWorkspaceOnlineEndpointKey -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -KeyType <KeyType> [-SubscriptionId <String>] [-KeyValue <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceOnlineEndpointKey

#### SYNOPSIS
List EndpointAuthKeys for an Endpoint using Key-based authentication.

#### SYNTAX

```powershell
Get-AzMlWorkspaceOnlineEndpointKey -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceOnlineEndpointToken

#### SYNOPSIS
Retrieve a valid AAD token for an Endpoint using AMLToken-based authentication.

#### SYNTAX

+ Get (Default)
```powershell
Get-AzMlWorkspaceOnlineEndpointToken -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzMlWorkspaceOnlineEndpointToken -InputObject <IMachineLearningWorkspacesIdentity>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### Get-AzMlWorkspaceOutboundNetworkDependencyEndpoint

#### SYNOPSIS
Called by Client (Portal, CLI, etc) to get a list of all external outbound dependencies (FQDNs) programmatically.

#### SYNTAX

```powershell
Get-AzMlWorkspaceOutboundNetworkDependencyEndpoint -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```


#### New-AzMLWorkspacePipelineJobObject

#### SYNOPSIS
Create an in-memory object for PipelineJob.

#### SYNTAX

```powershell
New-AzMLWorkspacePipelineJobObject [-ComputeId <String>] [-Description <String>] [-DisplayName <String>]
 [-ExperimentName <String>] [-IdentityType <IdentityConfigurationType>] [-Input <IPipelineJobInputs>]
 [-IsArchived <Boolean>] [-Job <IPipelineJobJobs>] [-Output <IPipelineJobOutputs>]
 [-Property <IResourceBaseProperties>] [-ServiceEndpoint <String>] [-ServicePort <Int32>]
 [-ServiceProperty <IJobServiceProperties>] [-ServiceType <String>] [-Setting <IAny>]
 [-Tag <IResourceBaseTags>] [<CommonParameters>]
```


#### New-AzMLWorkspaceQuotaBasePropertiesObject

#### SYNOPSIS
Create an in-memory object for QuotaBaseProperties.

#### SYNTAX

```powershell
New-AzMLWorkspaceQuotaBasePropertiesObject [-Id <String>] [-Limit <Int64>] [-Type <String>]
 [-Unit <QuotaUnit>] [<CommonParameters>]
```


#### New-AzMLWorkspaceQuotaPropertiesObject

#### SYNOPSIS
Create an in-memory object for QuotaBaseProperties.

#### SYNTAX

```powershell
New-AzMLWorkspaceQuotaPropertiesObject [-Id <String>] [-Limit <Int64>] [-Type <String>] [-Unit <QuotaUnit>]
 [<CommonParameters>]
```


#### Get-AzMlWorkspaceStorageAccountKey

#### SYNOPSIS
List storage account keys of a workspace.

#### SYNTAX

```powershell
Get-AzMlWorkspaceStorageAccountKey -ResourceGroupName <String> -WorkspaceName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```


#### New-AzMLWorkspaceSweepJobObject

#### SYNOPSIS
Create an in-memory object for SweepJob.

#### SYNTAX

```powershell
New-AzMLWorkspaceSweepJobObject -ObjectiveGoal <Goal> -ObjectivePrimaryMetric <String>
 -SamplingAlgorithmType <SamplingAlgorithmType> -SearchSpace <IAny> -TrialCommand <String>
 -TrialEnvironmentId <String> [-ComputeId <String>] [-Description <String>] [-DisplayName <String>]
 [-DistributionType <DistributionType>] [-EarlyTerminationDelayEvaluation <Int32>]
 [-EarlyTerminationEvaluationInterval <Int32>] [-EarlyTerminationPolicyType <EarlyTerminationPolicyType>]
 [-ExperimentName <String>] [-IdentityType <IdentityConfigurationType>] [-Input <ISweepJobInputs>]
 [-IsArchived <Boolean>] [-LimitMaxConcurrentTrial <Int32>] [-LimitMaxTotalTrial <Int32>]
 [-LimitTimeout <TimeSpan>] [-LimitTrialTimeout <TimeSpan>] [-Output <ISweepJobOutputs>]
 [-Property <IResourceBaseProperties>] [-ResourceInstanceCount <Int32>] [-ResourceInstanceType <String>]
 [-ResourceProperty <IResourceConfigurationProperties>] [-ServiceEndpoint <String>] [-ServicePort <Int32>]
 [-ServiceProperty <IJobServiceProperties>] [-ServiceType <String>] [-Tag <IResourceBaseTags>]
 [-TrialCodeId <String>] [-TrialEnvironmentVariable <ITrialComponentEnvironmentVariables>]
 [<CommonParameters>]
```


#### New-AzMLWorkspaceSynapseSparkObject

#### SYNOPSIS
Create an in-memory object for SynapseSpark.

#### SYNTAX

```powershell
New-AzMLWorkspaceSynapseSparkObject [-AutoPausePropertyDelayInMinute <Int32>]
 [-AutoPausePropertyEnabled <Boolean>] [-AutoScalePropertyEnabled <Boolean>]
 [-AutoScalePropertyMaxNodeCount <Int32>] [-AutoScalePropertyMinNodeCount <Int32>] [-Description <String>]
 [-DisableLocalAuth <Boolean>] [-NodeCount <Int32>] [-NodeSize <String>] [-NodeSizeFamily <String>]
 [-PoolName <String>] [-ResourceGroup <String>] [-ResourceId <String>] [-SparkVersion <String>]
 [-SubscriptionId <String>] [-WorkspaceName <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceTritonModelJobInputObject

#### SYNOPSIS
Create an in-memory object for TritonModelJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceTritonModelJobInputObject -Type <JobInputType> -Uri <String> [-Description <String>]
 [-Mode <InputDeliveryMode>] [<CommonParameters>]
```


#### New-AzMLWorkspaceTritonModelJobOutputObject

#### SYNOPSIS
Create an in-memory object for TritonModelJobOutput.

#### SYNTAX

```powershell
New-AzMLWorkspaceTritonModelJobOutputObject -Type <JobOutputType> [-Description <String>]
 [-Mode <OutputDeliveryMode>] [-Uri <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceUriFileJobInputObject

#### SYNOPSIS
Create an in-memory object for UriFileJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceUriFileJobInputObject -Type <JobInputType> -Uri <String> [-Description <String>]
 [-Mode <InputDeliveryMode>] [<CommonParameters>]
```


#### New-AzMLWorkspaceUriFileJobOutputObject

#### SYNOPSIS
Create an in-memory object for UriFileJobOutput.

#### SYNTAX

```powershell
New-AzMLWorkspaceUriFileJobOutputObject -Type <JobOutputType> [-Description <String>]
 [-Mode <OutputDeliveryMode>] [-Uri <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceUriFolderJobInputObject

#### SYNOPSIS
Create an in-memory object for UriFolderJobInput.

#### SYNTAX

```powershell
New-AzMLWorkspaceUriFolderJobInputObject -Type <JobInputType> -Uri <String> [-Description <String>]
 [-Mode <InputDeliveryMode>] [<CommonParameters>]
```


#### New-AzMLWorkspaceUriFolderJobOutputObject

#### SYNOPSIS
Create an in-memory object for UriFolderJobOutput.

#### SYNTAX

```powershell
New-AzMLWorkspaceUriFolderJobOutputObject -Type <JobOutputType> [-Description <String>]
 [-Mode <OutputDeliveryMode>] [-Uri <String>] [<CommonParameters>]
```


#### New-AzMLWorkspaceVirtualMachineObject

#### SYNOPSIS
Create an in-memory object for VirtualMachine.

#### SYNTAX

```powershell
New-AzMLWorkspaceVirtualMachineObject [-Address <String>] [-AdministratorAccountPassword <String>]
 [-AdministratorAccountPrivateKeyData <String>] [-AdministratorAccountPublicKeyData <String>]
 [-AdministratorAccountUsername <String>] [-Description <String>] [-DisableLocalAuth <Boolean>]
 [-IsNotebookInstanceCompute <Boolean>] [-NotebookServerPort <Int32>] [-ResourceId <String>] [-Size <String>]
 [-SshPort <Int32>] [<CommonParameters>]
```


