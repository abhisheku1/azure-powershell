---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/get-azeducationgrant
schema: 2.0.0
---

# Get-AzEducationGrant

## SYNOPSIS
Get a list of grants that Microsoft has provided.

## SYNTAX

### List (Default)
```
Get-AzEducationGrant [-IncludeAllocatedBudget] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### List1
```
Get-AzEducationGrant -BillingAccountName <String> -BillingProfileName <String> [-IncludeAllocatedBudget]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

## DESCRIPTION
Get a list of grants that Microsoft has provided.

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

### -BillingAccountName
Billing account name.

```yaml
Type: System.String
Parameter Sets: List1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BillingProfileName
Billing profile name.

```yaml
Type: System.String
Parameter Sets: List1
Aliases:

Required: True
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

### -IncludeAllocatedBudget
May be used to include information about budget that has been allocated.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IGrantDetails

## NOTES

ALIASES

## RELATED LINKS

