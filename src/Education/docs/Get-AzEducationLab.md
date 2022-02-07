---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/get-azeducationlab
schema: 2.0.0
---

# Get-AzEducationLab

## SYNOPSIS
Get a list of labs associated with the provided billing account name and billing profile name.

## SYNTAX

### List (Default)
```
Get-AzEducationLab -BillingAccountName <String> -BillingProfileName <String> [-IncludeBudget]
 [-IncludeDeleted] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### List1
```
Get-AzEducationLab -BillingAccountName <String> -BillingProfileName <String> -InvoiceSectionName <String>
 [-IncludeBudget] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

## DESCRIPTION
Get a list of labs associated with the provided billing account name and billing profile name.

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
Parameter Sets: (All)
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
Parameter Sets: (All)
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

### -IncludeBudget
May be used to include budget information.

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

### -IncludeDeleted
May be used to show deleted items.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: List
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InvoiceSectionName
Invoice section name.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.ILabDetails

## NOTES

ALIASES

## RELATED LINKS

