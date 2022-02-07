---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/invoke-azeducationstudentcreate
schema: 2.0.0
---

# Invoke-AzEducationStudentCreate

## SYNOPSIS
Create and add a new student to the specified lab or update the details of an existing student in a lab.
Note the student must have a valid tenant to accept the lab after they have been added to lab.

## SYNTAX

### StudentExpanded (Default)
```
Invoke-AzEducationStudentCreate -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> -StudentAlias <String> [-BudgetCurrency <String>] [-BudgetValue <Single>]
 [-Email <String>] [-ExpirationDate <DateTime>] [-FirstName <String>] [-LastName <String>]
 [-Role <StudentRole>] [-SubscriptionAlias <String>] [-SubscriptionInviteLastSentDate <DateTime>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Student
```
Invoke-AzEducationStudentCreate -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> -StudentAlias <String> -Parameter <IStudentDetails> [-DefaultProfile <PSObject>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

### StudentViaIdentity
```
Invoke-AzEducationStudentCreate -InputObject <IEducationIdentity> -Parameter <IStudentDetails>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### StudentViaIdentityExpanded
```
Invoke-AzEducationStudentCreate -InputObject <IEducationIdentity> [-BudgetCurrency <String>]
 [-BudgetValue <Single>] [-Email <String>] [-ExpirationDate <DateTime>] [-FirstName <String>]
 [-LastName <String>] [-Role <StudentRole>] [-SubscriptionAlias <String>]
 [-SubscriptionInviteLastSentDate <DateTime>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Create and add a new student to the specified lab or update the details of an existing student in a lab.
Note the student must have a valid tenant to accept the lab after they have been added to lab.

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
Parameter Sets: Student, StudentExpanded
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
Parameter Sets: Student, StudentExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BudgetCurrency
The type of currency being used for the value.

```yaml
Type: System.String
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BudgetValue
Amount value.

```yaml
Type: System.Single
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
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

### -Email
Student Email

```yaml
Type: System.String
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExpirationDate
Date this student is set to expire from the lab.

```yaml
Type: System.DateTime
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FirstName
First Name

```yaml
Type: System.String
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
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
Parameter Sets: StudentViaIdentity, StudentViaIdentityExpanded
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
Parameter Sets: Student, StudentExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastName
Last Name

```yaml
Type: System.String
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameter
Student details.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IStudentDetails
Parameter Sets: Student, StudentViaIdentity
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Role
Student Role

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Support.StudentRole
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StudentAlias
Student alias.

```yaml
Type: System.String
Parameter Sets: Student, StudentExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionAlias
Subscription alias

```yaml
Type: System.String
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionInviteLastSentDate
subscription invite last sent date

```yaml
Type: System.DateTime
Parameter Sets: StudentExpanded, StudentViaIdentityExpanded
Aliases:

Required: False
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

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IStudentDetails

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

PARAMETER <IStudentDetails>: Student details.
  - `[SystemDataCreatedAt <DateTime?>]`: The timestamp of resource creation (UTC).
  - `[SystemDataCreatedBy <String>]`: The identity that created the resource.
  - `[SystemDataCreatedByType <CreatedByType?>]`: The type of identity that created the resource.
  - `[SystemDataLastModifiedAt <DateTime?>]`: The timestamp of resource last modification (UTC)
  - `[SystemDataLastModifiedBy <String>]`: The identity that last modified the resource.
  - `[SystemDataLastModifiedByType <CreatedByType?>]`: The type of identity that last modified the resource.
  - `[BudgetCurrency <String>]`: The type of currency being used for the value.
  - `[BudgetValue <Single?>]`: Amount value.
  - `[Email <String>]`: Student Email
  - `[ExpirationDate <DateTime?>]`: Date this student is set to expire from the lab.
  - `[FirstName <String>]`: First Name
  - `[LastName <String>]`: Last Name
  - `[Role <StudentRole?>]`: Student Role
  - `[SubscriptionAlias <String>]`: Subscription alias
  - `[SubscriptionInviteLastSentDate <DateTime?>]`: subscription invite last sent date

## RELATED LINKS

