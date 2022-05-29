---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceCommandJobObject
schema: 2.0.0
---

# New-AzMLWorkspaceCommandJobObject

## SYNOPSIS
Create an in-memory object for CommandJob.

## SYNTAX

```
New-AzMLWorkspaceCommandJobObject -Command <String> -EnvironmentId <String> -JobType <JobType>
 [-CodeId <String>] [-ComputeId <String>] [-Description <String>] [-DisplayName <String>]
 [-DistributionType <DistributionType>] [-EnvironmentVariable <ICommandJobEnvironmentVariables>]
 [-ExperimentName <String>] [-IdentityType <IdentityConfigurationType>] [-Input <ICommandJobInputs>]
 [-IsArchived <Boolean>] [-LimitJobLimitsType <JobLimitsType>] [-LimitTimeout <TimeSpan>]
 [-Output <ICommandJobOutputs>] [-Property <IResourceBaseProperties>] [-ResourceInstanceCount <Int32>]
 [-ResourceInstanceType <String>] [-ResourceProperty <IResourceConfigurationProperties>]
 [-Service <IJobBaseServices>] [-Tag <IResourceBaseTags>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for CommandJob.

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

### -CodeId
ARM resource ID of the code asset.

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

### -Command
[Required] The command to execute on startup of the job.
eg.
"python train.py".

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

### -ComputeId
ARM resource ID of the compute resource.

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

### -DisplayName
Display name of job.

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

### -DistributionType
[Required] Specifies the type of distribution framework.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.DistributionType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnvironmentId
[Required] The ARM resource ID of the Environment specification for the job.

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

### -EnvironmentVariable
Environment variables included in the job.
To construct, see NOTES section for ENVIRONMENTVARIABLE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ICommandJobEnvironmentVariables
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ExperimentName
The name of the experiment the job belongs to.
If not set, the job is placed in the "Default" experiment.

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

### -IdentityType
[Required] Specifies the type of identity framework.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.IdentityConfigurationType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Input
Mapping of input data bindings used in the job.
To construct, see NOTES section for INPUT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ICommandJobInputs
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IsArchived
Is the asset archived?.

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

### -JobType
[Required] Specifies the type of job.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.JobType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LimitJobLimitsType
[Required] JobLimit type.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.JobLimitsType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LimitTimeout
The max run duration in ISO 8601 format, after which the job will be cancelled.
Only supports duration with precision as low as Seconds.

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

### -Output
Mapping of output data bindings used in the job.
To construct, see NOTES section for OUTPUT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ICommandJobOutputs
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
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IResourceBaseProperties
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceInstanceCount
Optional number of instances or nodes used by the compute target.

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

### -ResourceInstanceType
Optional type of VM used as supported by the compute target.

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

### -ResourceProperty
Additional properties bag.
To construct, see NOTES section for RESOURCEPROPERTY properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IResourceConfigurationProperties
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Service
List of JobEndpoints.
        For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
To construct, see NOTES section for SERVICE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IJobBaseServices
Parameter Sets: (All)
Aliases:

Required: False
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
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.IResourceBaseTags
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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.CommandJob

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


ENVIRONMENTVARIABLE <ICommandJobEnvironmentVariables>: Environment variables included in the job.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

INPUT <ICommandJobInputs>: Mapping of input data bindings used in the job.
  - `[(Any) <IJobInput>]`: This indicates any property can be added to this object.

OUTPUT <ICommandJobOutputs>: Mapping of output data bindings used in the job.
  - `[(Any) <IJobOutput>]`: This indicates any property can be added to this object.

PROPERTY <IResourceBaseProperties>: The asset property dictionary.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

RESOURCEPROPERTY <IResourceConfigurationProperties>: Additional properties bag.
  - `[(Any) <Object>]`: This indicates any property can be added to this object.

SERVICE <IJobBaseServices>: List of JobEndpoints.         For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  - `[(Any) <IJobService>]`: This indicates any property can be added to this object.

TAG <IResourceBaseTags>: Tag dictionary. Tags can be added, removed, and updated.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

