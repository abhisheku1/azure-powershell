---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/invoke-azeducationstudentget
schema: 2.0.0
---

# Invoke-AzEducationStudentGet

## SYNOPSIS
Get the details for a specific student in the specified lab by student alias

## SYNTAX

### Student (Default)
```
Invoke-AzEducationStudentGet -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> -StudentAlias <String> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### StudentViaIdentity
```
Invoke-AzEducationStudentGet -InputObject <IEducationIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

## DESCRIPTION
Get the details for a specific student in the specified lab by student alias

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
Parameter Sets: Student
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
Parameter Sets: Student
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

### -InputObject
Identity Parameter
To construct, see NOTES section for INPUTOBJECT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Models.IEducationIdentity
Parameter Sets: StudentViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -InvoiceSectionName
Invoice section name.

```yaml
Type: System.String
Parameter Sets: Student
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StudentAlias
Student alias.

```yaml
Type: System.String
Parameter Sets: Student
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

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.IEducationIdentity

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IStudentDetails

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUTOBJECT <IEducationIdentity>: Identity Parameter
  - `[BillingAccountName <String>]`: Billing account name.
  - `[BillingProfileName <String>]`: Billing profile name.
  - `[Id <String>]`: Resource identity path
  - `[InvoiceSectionName <String>]`: Invoice section name.
  - `[JoinRequestName <String>]`: Join name
  - `[StudentAlias <String>]`: Student alias.
  - `[StudentLabName <String>]`: Student lab name.

## RELATED LINKS

