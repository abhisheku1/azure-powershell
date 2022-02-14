---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.machinelearningworkspaces/set-azmachinelearningworkspacesprivateendpointconnection
schema: 2.0.0
---

# Set-AzMachineLearningWorkspacesPrivateEndpointConnection

## SYNOPSIS
Update the state of specified private endpoint connection associated with the workspace.

## SYNTAX

### UpdateExpanded (Default)
```
Set-AzMachineLearningWorkspacesPrivateEndpointConnection -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> [-SubscriptionId <String>] [-IdentityType <ResourceIdentityType>]
 [-IdentityUserAssignedIdentity <Hashtable>] [-Location <String>]
 [-PrivateLinkServiceConnectionStateActionsRequired <String>]
 [-PrivateLinkServiceConnectionStateDescription <String>]
 [-PrivateLinkServiceConnectionStateStatus <PrivateEndpointServiceConnectionStatus>] [-SkuName <String>]
 [-SkuTier <String>] [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Update
```
Set-AzMachineLearningWorkspacesPrivateEndpointConnection -Name <String> -ResourceGroupName <String>
 -WorkspaceName <String> -Property <IPrivateEndpointConnection> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Update the state of specified private endpoint connection associated with the workspace.

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

### -IdentityType
The identity type.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ResourceIdentityType
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the private endpoint connection associated with the workspace

```yaml
Type: System.String
Parameter Sets: (All)
Aliases: PrivateEndpointConnectionName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateLinkServiceConnectionStateActionsRequired
A message indicating if changes on the service provider require any updates on the consumer.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateLinkServiceConnectionStateDescription
The reason for approval/rejection of the connection.

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateLinkServiceConnectionStateStatus
Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.PrivateEndpointServiceConnectionStatus
Parameter Sets: UpdateExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Property
The Private Endpoint Connection resource.
To construct, see NOTES section for PROPERTY properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.IPrivateEndpointConnection
Parameter Sets: Update
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### -SkuName
Name of the sku

```yaml
Type: System.String
Parameter Sets: UpdateExpanded
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
Parameter Sets: UpdateExpanded
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
Parameter Sets: (All)
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
Parameter Sets: UpdateExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.IPrivateEndpointConnection

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api202201Preview.IPrivateEndpointConnection

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


PROPERTY <IPrivateEndpointConnection>: The Private Endpoint Connection resource.
  - `[IdentityType <ResourceIdentityType?>]`: The identity type.
  - `[IdentityUserAssignedIdentity <IUserAssignedIdentities>]`: The user assigned identities associated with the resource.
    - `[(Any) <IUserAssignedIdentity>]`: This indicates any property can be added to this object.
  - `[Location <String>]`: Specifies the location of the resource.
  - `[PrivateLinkServiceConnectionStateActionsRequired <String>]`: A message indicating if changes on the service provider require any updates on the consumer.
  - `[PrivateLinkServiceConnectionStateDescription <String>]`: The reason for approval/rejection of the connection.
  - `[PrivateLinkServiceConnectionStateStatus <PrivateEndpointServiceConnectionStatus?>]`: Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  - `[SkuName <String>]`: Name of the sku
  - `[SkuTier <String>]`: Tier of the sku like Basic or Enterprise
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[Tag <IPrivateEndpointConnectionTags>]`: Contains resource tags defined as key/value pairs.
    - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

