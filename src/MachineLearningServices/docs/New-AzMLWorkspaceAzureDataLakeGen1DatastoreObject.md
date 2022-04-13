---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceAzureDataLakeGen1DatastoreObject
schema: 2.0.0
---

# New-AzMLWorkspaceAzureDataLakeGen1DatastoreObject

## SYNOPSIS
Create an in-memory object for AzureDataLakeGen1Datastore.

## SYNTAX

```
New-AzMLWorkspaceAzureDataLakeGen1DatastoreObject -CredentialsType <CredentialsType>
 -DatastoreType <DatastoreType> -StoreName <String> [-Description <String>]
 [-Property <IResourceBaseProperties>] [-ServiceDataAccessAuthIdentity <ServiceDataAccessAuthIdentity>]
 [-Tag <IResourceBaseTags>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for AzureDataLakeGen1Datastore.

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

### -CredentialsType
Credential type used to authentication with storage.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.CredentialsType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatastoreType
Storage type backing the datastore.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.DatastoreType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The asset description text.

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

### -Property
The asset property dictionary.
To construct, see NOTES section for PROPERTY properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IResourceBaseProperties
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceDataAccessAuthIdentity
Indicates which identity to use to authenticate service data access to customer's storage.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ServiceDataAccessAuthIdentity
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StoreName
Azure Data Lake store name.

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

### -Tag
Tag dictionary.
Tags can be added, removed, and updated.
To construct, see NOTES section for TAG properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IResourceBaseTags
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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.AzureDataLakeGen1Datastore

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


PROPERTY <IResourceBaseProperties>: The asset property dictionary.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

TAG <IResourceBaseTags>: Tag dictionary. Tags can be added, removed, and updated.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

