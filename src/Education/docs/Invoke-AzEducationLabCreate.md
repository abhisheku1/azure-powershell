---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/invoke-azeducationlabcreate
schema: 2.0.0
---

# Invoke-AzEducationLabCreate

## SYNOPSIS
Create a new lab or update a previously created lab.

## SYNTAX

### LabExpanded (Default)
```
Invoke-AzEducationLabCreate -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> [-BudgetPerStudentCurrency <String>] [-BudgetPerStudentValue <Single>]
 [-Description <String>] [-DisplayName <String>] [-ExpirationDate <DateTime>] [-DefaultProfile <PSObject>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Lab
```
Invoke-AzEducationLabCreate -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> -Parameter <ILabDetails> [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### LabViaIdentity
```
Invoke-AzEducationLabCreate -InputObject <IEducationIdentity> -Parameter <ILabDetails>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### LabViaIdentityExpanded
```
Invoke-AzEducationLabCreate -InputObject <IEducationIdentity> [-BudgetPerStudentCurrency <String>]
 [-BudgetPerStudentValue <Single>] [-Description <String>] [-DisplayName <String>]
 [-ExpirationDate <DateTime>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Create a new lab or update a previously created lab.

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
Parameter Sets: Lab, LabExpanded
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
Parameter Sets: Lab, LabExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BudgetPerStudentCurrency
The type of currency being used for the value.

```yaml
Type: System.String
Parameter Sets: LabExpanded, LabViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BudgetPerStudentValue
Amount value.

```yaml
Type: System.Single
Parameter Sets: LabExpanded, LabViaIdentityExpanded
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
Detail description of this lab

```yaml
Type: System.String
Parameter Sets: LabExpanded, LabViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisplayName
Lab Display Name

```yaml
Type: System.String
Parameter Sets: LabExpanded, LabViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpirationDate
Default expiration date for each student in this lab

```yaml
Type: System.DateTime
Parameter Sets: LabExpanded, LabViaIdentityExpanded
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
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Models.IEducationIdentity
Parameter Sets: LabViaIdentity, LabViaIdentityExpanded
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
Parameter Sets: Lab, LabExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameter
Lab details.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.ILabDetails
Parameter Sets: Lab, LabViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.ILabDetails

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.IEducationIdentity

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.ILabDetails

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

PARAMETER <ILabDetails>: Lab details.
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[BudgetPerStudentCurrency <String>]`: The type of currency being used for the value.
  - `[BudgetPerStudentValue <Single?>]`: Amount value.
  - `[Description <String>]`: Detail description of this lab
  - `[DisplayName <String>]`: Lab Display Name
  - `[ExpirationDate <DateTime?>]`: Default expiration date for each student in this lab
  - `[TotalAllocatedBudgetCurrency <String>]`: The type of currency being used for the value.
  - `[TotalAllocatedBudgetValue <Single?>]`: Amount value.
  - `[TotalBudgetCurrency <String>]`: The type of currency being used for the value.
  - `[TotalBudgetValue <Single?>]`: Amount value.

## RELATED LINKS

