---
external help file:
Module Name: Az.Authorization
online version: https://docs.microsoft.com/powershell/module/az.authorization/get-azrolemanagementpolicy
schema: 2.0.0
---

# Get-AzRoleManagementPolicy

## SYNOPSIS
Get the specified role management policy for a resource scope

## SYNTAX

### List (Default)
```
Get-AzRoleManagementPolicy -Scope <String> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### Get
```
Get-AzRoleManagementPolicy -Name <String> -Scope <String> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

## DESCRIPTION
Get the specified role management policy for a resource scope

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

### -Name
The name (guid) of the role management policy to get.

```yaml
Type: System.String
Parameter Sets: Get
Aliases: RoleManagementPolicyName

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Scope
The scope of the role management policy.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicy

## NOTES

ALIASES

## RELATED LINKS

