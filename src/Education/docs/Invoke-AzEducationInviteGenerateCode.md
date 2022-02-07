---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/invoke-azeducationinvitegeneratecode
schema: 2.0.0
---

# Invoke-AzEducationInviteGenerateCode

## SYNOPSIS
Generate invite code for a lab

## SYNTAX

### InviteExpanded (Default)
```
Invoke-AzEducationInviteGenerateCode -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> [-OnlyUpdateStudentCountParameter] [-MaxStudentCount <Single>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Invite
```
Invoke-AzEducationInviteGenerateCode -BillingAccountName <String> -BillingProfileName <String>
 -InvoiceSectionName <String> -Parameter <IInviteCodeGenerateRequest> [-OnlyUpdateStudentCountParameter]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### InviteViaIdentity
```
Invoke-AzEducationInviteGenerateCode -InputObject <IEducationIdentity> -Parameter <IInviteCodeGenerateRequest>
 [-OnlyUpdateStudentCountParameter] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### InviteViaIdentityExpanded
```
Invoke-AzEducationInviteGenerateCode -InputObject <IEducationIdentity> [-OnlyUpdateStudentCountParameter]
 [-MaxStudentCount <Single>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Generate invite code for a lab

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
Parameter Sets: Invite, InviteExpanded
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
Parameter Sets: Invite, InviteExpanded
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
Parameter Sets: InviteViaIdentity, InviteViaIdentityExpanded
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
Parameter Sets: Invite, InviteExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxStudentCount
the total number of students that can be accepted to the lab.

```yaml
Type: System.Single
Parameter Sets: InviteExpanded, InviteViaIdentityExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OnlyUpdateStudentCountParameter
set this flag to true if you want to update student count without generating a new invite code

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

### -Parameter
invite code generate request.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IInviteCodeGenerateRequest
Parameter Sets: Invite, InviteViaIdentity
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

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IInviteCodeGenerateRequest

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

PARAMETER <IInviteCodeGenerateRequest>: invite code generate request.
  - `[MaxStudentCount <Single?>]`: the total number of students that can be accepted to the lab.

## RELATED LINKS

