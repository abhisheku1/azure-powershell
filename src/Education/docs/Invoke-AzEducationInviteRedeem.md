---
external help file:
Module Name: Az.Education
online version: https://docs.microsoft.com/powershell/module/az.education/invoke-azeducationinviteredeem
schema: 2.0.0
---

# Invoke-AzEducationInviteRedeem

## SYNOPSIS
Redeem invite code to join a redeemable lab

## SYNTAX

### InviteExpanded (Default)
```
Invoke-AzEducationInviteRedeem -FirstName <String> -LastName <String> -RedeemCode <String>
 [-DefaultProfile <PSObject>] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

### Invite
```
Invoke-AzEducationInviteRedeem -Parameter <IRedeemRequest> [-DefaultProfile <PSObject>] [-PassThru] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

## DESCRIPTION
Redeem invite code to join a redeemable lab

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

### -FirstName
first name of requester

```yaml
Type: System.String
Parameter Sets: InviteExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastName
last name of requester

```yaml
Type: System.String
Parameter Sets: InviteExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameter
redeem request.
To construct, see NOTES section for PARAMETER properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IRedeemRequest
Parameter Sets: Invite
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds

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

### -RedeemCode
redeem code

```yaml
Type: System.String
Parameter Sets: InviteExpanded
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

### Microsoft.Azure.PowerShell.Cmdlets.Education.Models.Api20211201Preview.IRedeemRequest

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


PARAMETER <IRedeemRequest>: redeem request.
  - `FirstName <String>`: first name of requester
  - `LastName <String>`: last name of requester
  - `RedeemCode <String>`: redeem code

## RELATED LINKS

