---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceAmlComputeObject
schema: 2.0.0
---

# New-AzMLWorkspaceAmlComputeObject

## SYNOPSIS
Create an in-memory object for AmlCompute.

## SYNTAX

```
New-AzMLWorkspaceAmlComputeObject -Type <ComputeType> [-Description <String>] [-DisableLocalAuth <Boolean>]
 [-EnableNodePublicIP <Boolean>] [-IsolatedNetwork <Boolean>] [-OSType <OSType>]
 [-PropertyBag <IAmlComputePropertiesPropertyBag>]
 [-RemoteLoginPortPublicAccess <RemoteLoginPortPublicAccess>] [-ResourceId <String>]
 [-ScaleSettingMaxNodeCount <Int32>] [-ScaleSettingMinNodeCount <Int32>]
 [-ScaleSettingNodeIdleTimeBeforeScaleDown <TimeSpan>] [-SubnetId <String>]
 [-UserAccountCredentialsAdminUserName <String>] [-UserAccountCredentialsAdminUserPassword <String>]
 [-UserAccountCredentialsAdminUserSshPublicKey <String>] [-VirtualMachineImageId <String>]
 [-VMPriority <VMPriority>] [-VMSize <String>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for AmlCompute.

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

### -Description
The description of the Machine Learning compute.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableLocalAuth
Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.

```yaml
Type: System.Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableNodePublicIP
Enable or disable node public IP address provisioning.
Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned.
false - Indicates that the compute nodes will have a private endpoint and no public IPs.

```yaml
Type: System.Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsolatedNetwork
Network is isolated or not.

```yaml
Type: System.Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OSType
Compute OS Type.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.OSType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PropertyBag
A property bag containing additional properties.
To construct, see NOTES section for PROPERTYBAG properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IAmlComputePropertiesPropertyBag
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoteLoginPortPublicAccess
State of the public SSH port.
Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster.
Enabled - Indicates that the public ssh port is open on all nodes of the cluster.
NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes.
It can be default only during cluster creation time, after creation it will be either enabled or disabled.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.RemoteLoginPortPublicAccess
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceId
ARM resource id of the underlying compute.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScaleSettingMaxNodeCount
Max number of nodes to use.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScaleSettingMinNodeCount
Min number of nodes to use.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ScaleSettingNodeIdleTimeBeforeScaleDown
Node Idle Time before scaling down amlCompute.
This string needs to be in the RFC Format.

```yaml
Type: System.TimeSpan
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubnetId
The ID of the resource.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The type of compute.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ComputeType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAccountCredentialsAdminUserName
Name of the administrator user account which can be used to SSH to nodes.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAccountCredentialsAdminUserPassword
Password of the administrator user account.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserAccountCredentialsAdminUserSshPublicKey
SSH public key of the administrator user account.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VirtualMachineImageId
Virtual Machine image path.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMPriority
Virtual Machine priority.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.VMPriority
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMSize
Virtual Machine Size.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.AmlCompute

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


PROPERTYBAG <IAmlComputePropertiesPropertyBag>: A property bag containing additional properties.
  - `[(Any) <Object>]`: This indicates any property can be added to this object.

## RELATED LINKS

