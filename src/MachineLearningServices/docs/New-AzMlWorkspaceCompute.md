---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.machinelearningworkspaces/new-azmlworkspacecompute
schema: 2.0.0
---

# New-AzMlWorkspaceCompute

## SYNOPSIS
Creates or updates compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.
If your intent is to create a new compute, do a GET first to verify that it does not exist yet.

## SYNTAX

```
New-AzMlWorkspaceCompute -Name <String> -ResourceGroupName <String> -WorkspaceName <String>
 -Compute <IComputeResource> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Creates or updates compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.
If your intent is to create a new compute, do a GET first to verify that it does not exist yet.

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

### -Compute
Machine Learning compute object wrapped into ARM resource envelope.
To construct, see NOTES section for COMPUTE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IComputeResource
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### -Name
Name of the Azure Machine Learning compute.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases: ComputeName

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

### -ResourceGroupName
The name of the resource group.
The name is case insensitive.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
The ID of the target subscription.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: (Get-AzContext).Subscription.Id
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkspaceName
Name of Azure Machine Learning workspace.

```yaml
Type: System.String
Parameter Sets: (All)
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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IComputeResource

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IComputeResource

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


COMPUTE <IComputeResource>: Machine Learning compute object wrapped into ARM resource envelope.
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[ComputeType <ComputeType?>]`: The type of compute
  - `[Description <String>]`: The description of the Machine Learning compute.
  - `[DisableLocalAuth <Boolean?>]`: Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  - `[ResourceId <String>]`: ARM resource id of the underlying compute
  - `[AzureAsyncOperation <String>]`: 
  - `[IdentityType <ResourceIdentityAssignment?>]`: The type of the ResourceIdentity
  - `[IdentityUserAssignedIdentity <IResourceIdentityUserAssignedIdentities>]`: Dictionary of the user assigned identities, key is ARM resource ID of the UAI.
    - `[(Any) <IUserAssignedIdentityMeta>]`: This indicates any property can be added to this object.
  - `[Location <String>]`: Specifies the location of the resource.
  - `[SkuCapacity <Int32?>]`: If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted.
  - `[SkuFamily <String>]`: If the service has different generations of hardware, for the same SKU, then that can be captured here.
  - `[SkuName <String>]`: The name of the SKU. Ex - P3. It is typically a letter+number code
  - `[SkuSize <String>]`: The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code. 
  - `[SkuTier <SkuTier?>]`: This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT.
  - `[Tag <IComputeResourceTags>]`: Contains resource tags defined as key/value pairs.
    - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

