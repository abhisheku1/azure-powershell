---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspacePipelineJobObject
schema: 2.0.0
---

# New-AzMLWorkspacePipelineJobObject

## SYNOPSIS
Create an in-memory object for PipelineJob.

## SYNTAX

```
New-AzMLWorkspacePipelineJobObject -Type <JobType> [-Binding <IBinding[]>]
 [-ComponentJob <IPipelineJobComponentJobs>] [-ComputeId <String>] [-Description <String>]
 [-DisplayName <String>] [-ExperimentName <String>] [-Input <IPipelineJobInputs>] [-IsArchived <Boolean>]
 [-Output <IPipelineJobOutputs>] [-Property <IResourceBaseProperties>] [-Service <IJobBaseServices>]
 [-Setting <IAny>] [-Tag <IResourceBaseTags>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for PipelineJob.

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

### -Binding
Binding to represent relation between inputs, outputs and parameters.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IBinding[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ComponentJob
JobDefinition set for PipelineStepJobs.
To construct, see NOTES section for COMPONENTJOB properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IPipelineJobComponentJobs
Parameter Sets: (All)
Aliases:

Required: False
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

### -Input
Data input set for jobs.
To construct, see NOTES section for INPUT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IPipelineJobInputs
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

### -Output
Data output set for jobs.
To construct, see NOTES section for OUTPUT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IPipelineJobOutputs
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

### -Service
List of JobEndpoints.
        For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
To construct, see NOTES section for SERVICE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IJobBaseServices
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Setting
Pipeline settings, for things like ContinueRunOnStepFailure etc.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.IAny
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
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.IResourceBaseTags
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
Specifies the type of job.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20211001.PipelineJob

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


COMPONENTJOB <IPipelineJobComponentJobs>: JobDefinition set for PipelineStepJobs.
  - `[(Any) <IComponentJob>]`: This indicates any property can be added to this object.

INPUT <IPipelineJobInputs>: Data input set for jobs.
  - `[(Any) <IJobInput>]`: This indicates any property can be added to this object.

OUTPUT <IPipelineJobOutputs>: Data output set for jobs.
  - `[(Any) <IJobOutput>]`: This indicates any property can be added to this object.

PROPERTY <IResourceBaseProperties>: The asset property dictionary.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

SERVICE <IJobBaseServices>: List of JobEndpoints.         For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  - `[(Any) <IJobService>]`: This indicates any property can be added to this object.

TAG <IResourceBaseTags>: Tag dictionary. Tags can be added, removed, and updated.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

