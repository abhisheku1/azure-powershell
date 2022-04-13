---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.machinelearningworkspaces/new-azmlworkspaceonlinedeployment
schema: 2.0.0
---

# New-AzMlWorkspaceOnlineDeployment

## SYNOPSIS
Create or update Inference Endpoint Deployment (asynchronous).

## SYNTAX

### CreateExpanded (Default)
```
New-AzMlWorkspaceOnlineDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> -EndpointComputeType <EndpointComputeType> -Location <String>
 [-SubscriptionId <String>] [-AppInsightsEnabled] [-CodeConfigurationCodeId <String>]
 [-CodeConfigurationScoringScript <String>] [-Description <String>]
 [-EndpointDeploymentPropertiesBaseProperty <Hashtable>] [-EnvironmentId <String>]
 [-EnvironmentVariable <Hashtable>] [-IdentityType <ResourceIdentityAssignment>]
 [-IdentityUserAssignedIdentity <Hashtable>] [-InstanceType <String>] [-Kind <String>]
 [-LivenessProbeFailureThreshold <Int32>] [-LivenessProbeInitialDelay <TimeSpan>]
 [-LivenessProbePeriod <TimeSpan>] [-LivenessProbeSuccessThreshold <Int32>] [-LivenessProbeTimeout <TimeSpan>]
 [-Model <String>] [-ModelMountPath <String>] [-ReadinessProbeFailureThreshold <Int32>]
 [-ReadinessProbeInitialDelay <TimeSpan>] [-ReadinessProbePeriod <TimeSpan>]
 [-ReadinessProbeSuccessThreshold <Int32>] [-ReadinessProbeTimeout <TimeSpan>]
 [-RequestSettingMaxConcurrentRequestsPerInstance <Int32>] [-RequestSettingMaxQueueWait <TimeSpan>]
 [-RequestSettingRequestTimeout <TimeSpan>] [-ScaleSettingScaleType <ScaleType>] [-SkuCapacity <Int32>]
 [-SkuFamily <String>] [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Create
```
New-AzMlWorkspaceOnlineDeployment -EndpointName <String> -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> -Body <IOnlineDeploymentData> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### CreateViaIdentity
```
New-AzMlWorkspaceOnlineDeployment -InputObject <IMachineLearningWorkspacesIdentity>
 -Body <IOnlineDeploymentData> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### CreateViaIdentityExpanded
```
New-AzMlWorkspaceOnlineDeployment -InputObject <IMachineLearningWorkspacesIdentity>
 -EndpointComputeType <EndpointComputeType> -Location <String> [-AppInsightsEnabled]
 [-CodeConfigurationCodeId <String>] [-CodeConfigurationScoringScript <String>] [-Description <String>]
 [-EndpointDeploymentPropertiesBaseProperty <Hashtable>] [-EnvironmentId <String>]
 [-EnvironmentVariable <Hashtable>] [-IdentityType <ResourceIdentityAssignment>]
 [-IdentityUserAssignedIdentity <Hashtable>] [-InstanceType <String>] [-Kind <String>]
 [-LivenessProbeFailureThreshold <Int32>] [-LivenessProbeInitialDelay <TimeSpan>]
 [-LivenessProbePeriod <TimeSpan>] [-LivenessProbeSuccessThreshold <Int32>] [-LivenessProbeTimeout <TimeSpan>]
 [-Model <String>] [-ModelMountPath <String>] [-ReadinessProbeFailureThreshold <Int32>]
 [-ReadinessProbeInitialDelay <TimeSpan>] [-ReadinessProbePeriod <TimeSpan>]
 [-ReadinessProbeSuccessThreshold <Int32>] [-ReadinessProbeTimeout <TimeSpan>]
 [-RequestSettingMaxConcurrentRequestsPerInstance <Int32>] [-RequestSettingMaxQueueWait <TimeSpan>]
 [-RequestSettingRequestTimeout <TimeSpan>] [-ScaleSettingScaleType <ScaleType>] [-SkuCapacity <Int32>]
 [-SkuFamily <String>] [-SkuName <String>] [-SkuSize <String>] [-SkuTier <SkuTier>] [-Tag <Hashtable>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Create or update Inference Endpoint Deployment (asynchronous).

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
{{ Add code here }}
```

```output
{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -AppInsightsEnabled
If true, enables Application Insights logging.

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

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IOnlineDeploymentData
Parameter Sets: Create, CreateViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -CodeConfigurationCodeId
ARM resource ID of the code asset.

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

### -CodeConfigurationScoringScript
The script to execute on startup.
eg.
"score.py"

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
Description of the endpoint deployment.

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

### -EndpointComputeType
The compute type of the endpoint.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.EndpointComputeType
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EndpointDeploymentPropertiesBaseProperty
Property dictionary.
Properties can be added, but not removed or altered.

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

### -EndpointName
Inference endpoint name.

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

### -EnvironmentId
ARM resource ID of the environment specification for the endpoint deployment.

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

### -EnvironmentVariable
Environment variables configuration for the deployment.

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

### -IdentityType
The type of the ResourceIdentity

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ResourceIdentityAssignment
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdentityUserAssignedIdentity
Dictionary of the user assigned identities, key is ARM resource ID of the UAI.

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

### -InstanceType
Compute instance type.

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

### -Kind
Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.

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

### -LivenessProbeFailureThreshold
The number of failures to allow before returning an unhealthy status.

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

### -LivenessProbeInitialDelay
The delay before the first probe in ISO 8601 format.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LivenessProbePeriod
The length of time between probes in ISO 8601 format.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LivenessProbeSuccessThreshold
The number of successful probes before returning a healthy status.

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

### -LivenessProbeTimeout
The probe timeout in ISO 8601 format.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
The geo-location where the resource lives

```yaml
Type: System.String
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Model
The URI path to the model.

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

### -ModelMountPath
The path to mount the model in custom container.

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
Inference Endpoint Deployment name.

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

### -ReadinessProbeFailureThreshold
The number of failures to allow before returning an unhealthy status.

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

### -ReadinessProbeInitialDelay
The delay before the first probe in ISO 8601 format.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReadinessProbePeriod
The length of time between probes in ISO 8601 format.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReadinessProbeSuccessThreshold
The number of successful probes before returning a healthy status.

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

### -ReadinessProbeTimeout
The probe timeout in ISO 8601 format.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestSettingMaxConcurrentRequestsPerInstance
The number of maximum concurrent requests per node allowed per deployment.
Defaults to 1.

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

### -RequestSettingMaxQueueWait
The maximum amount of time a request will stay in the queue in ISO 8601 format.Defaults to 500ms.

```yaml
Type: System.TimeSpan
Parameter Sets: CreateExpanded, CreateViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestSettingRequestTimeout
The scoring timeout in ISO 8601 format.Defaults to 5000ms.

```yaml
Type: System.TimeSpan
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

### -ScaleSettingScaleType
Type of deployment scaling algorithm

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ScaleType
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
Resource tags.

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

### -WorkspaceName
Name of Azure Machine Learning workspace.

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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IOnlineDeploymentData

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.IMachineLearningWorkspacesIdentity

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IOnlineDeploymentData

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <IOnlineDeploymentData>: .
  - `Location <String>`: The geo-location where the resource lives
  - `EndpointComputeType <EndpointComputeType>`: The compute type of the endpoint.
  - `[Tag <ITrackedResourceTags>]`: Resource tags.
    - `[(Any) <String>]`: This indicates any property can be added to this object.
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[AppInsightsEnabled <Boolean?>]`: If true, enables Application Insights logging.
  - `[AzureAsyncOperation <String>]`: 
  - `[CodeConfigurationCodeId <String>]`: ARM resource ID of the code asset.
  - `[CodeConfigurationScoringScript <String>]`: The script to execute on startup. eg. "score.py"
  - `[Description <String>]`: Description of the endpoint deployment.
  - `[EndpointDeploymentPropertiesBaseProperty <IEndpointDeploymentPropertiesBaseProperties>]`: Property dictionary. Properties can be added, but not removed or altered.
    - `[(Any) <String>]`: This indicates any property can be added to this object.
  - `[EnvironmentId <String>]`: ARM resource ID of the environment specification for the endpoint deployment.
  - `[EnvironmentVariable <IEndpointDeploymentPropertiesBaseEnvironmentVariables>]`: Environment variables configuration for the deployment.
    - `[(Any) <String>]`: This indicates any property can be added to this object.
  - `[IdentityType <ResourceIdentityAssignment?>]`: The type of the ResourceIdentity
  - `[IdentityUserAssignedIdentity <IResourceIdentityUserAssignedIdentities>]`: Dictionary of the user assigned identities, key is ARM resource ID of the UAI.
    - `[(Any) <IUserAssignedIdentityMeta>]`: This indicates any property can be added to this object.
  - `[InstanceType <String>]`: Compute instance type.
  - `[Kind <String>]`: Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  - `[LivenessProbeFailureThreshold <Int32?>]`: The number of failures to allow before returning an unhealthy status.
  - `[LivenessProbeInitialDelay <TimeSpan?>]`: The delay before the first probe in ISO 8601 format.
  - `[LivenessProbePeriod <TimeSpan?>]`: The length of time between probes in ISO 8601 format.
  - `[LivenessProbeSuccessThreshold <Int32?>]`: The number of successful probes before returning a healthy status.
  - `[LivenessProbeTimeout <TimeSpan?>]`: The probe timeout in ISO 8601 format.
  - `[Model <String>]`: The URI path to the model.
  - `[ModelMountPath <String>]`: The path to mount the model in custom container.
  - `[ReadinessProbeFailureThreshold <Int32?>]`: The number of failures to allow before returning an unhealthy status.
  - `[ReadinessProbeInitialDelay <TimeSpan?>]`: The delay before the first probe in ISO 8601 format.
  - `[ReadinessProbePeriod <TimeSpan?>]`: The length of time between probes in ISO 8601 format.
  - `[ReadinessProbeSuccessThreshold <Int32?>]`: The number of successful probes before returning a healthy status.
  - `[ReadinessProbeTimeout <TimeSpan?>]`: The probe timeout in ISO 8601 format.
  - `[RequestSettingMaxConcurrentRequestsPerInstance <Int32?>]`: The number of maximum concurrent requests per node allowed per deployment. Defaults to 1.
  - `[RequestSettingMaxQueueWait <TimeSpan?>]`: The maximum amount of time a request will stay in the queue in ISO 8601 format.         Defaults to 500ms.
  - `[RequestSettingRequestTimeout <TimeSpan?>]`: The scoring timeout in ISO 8601 format.         Defaults to 5000ms.
  - `[ScaleSettingScaleType <ScaleType?>]`: Type of deployment scaling algorithm
  - `[SkuCapacity <Int32?>]`: If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  - `[SkuFamily <String>]`: If the service has different generations of hardware, for the same SKU, then that can be captured here.
  - `[SkuName <String>]`: The name of the SKU. Ex - P3. It is typically a letter+number code
  - `[SkuSize <String>]`: The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. 
  - `[SkuTier <SkuTier?>]`: This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  - `[XmsAsyncOperationTimeout <TimeSpan?>]`: 

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

## RELATED LINKS

