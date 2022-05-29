---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceSweepJobObject
schema: 2.0.0
---

# New-AzMLWorkspaceSweepJobObject

## SYNOPSIS
Create an in-memory object for SweepJob.

## SYNTAX

```
New-AzMLWorkspaceSweepJobObject -JobType <JobType> -ObjectiveGoal <Goal> -ObjectivePrimaryMetric <String>
 -SamplingAlgorithmType <SamplingAlgorithmType> -SearchSpace <IAny> -TrialCommand <String>
 -TrialEnvironmentId <String> [-ComputeId <String>] [-Description <String>] [-DisplayName <String>]
 [-DistributionType <DistributionType>] [-EarlyTerminationDelayEvaluation <Int32>]
 [-EarlyTerminationEvaluationInterval <Int32>] [-EarlyTerminationPolicyType <EarlyTerminationPolicyType>]
 [-ExperimentName <String>] [-IdentityType <IdentityConfigurationType>] [-Input <ISweepJobInputs>]
 [-IsArchived <Boolean>] [-LimitJobLimitsType <JobLimitsType>] [-LimitMaxConcurrentTrial <Int32>]
 [-LimitMaxTotalTrial <Int32>] [-LimitTimeout <TimeSpan>] [-LimitTrialTimeout <TimeSpan>]
 [-Output <ISweepJobOutputs>] [-Property <IResourceBaseProperties>] [-ResourceInstanceCount <Int32>]
 [-ResourceInstanceType <String>] [-ResourceProperty <IResourceConfigurationProperties>]
 [-Service <IJobBaseServices>] [-Tag <IResourceBaseTags>] [-TrialCodeId <String>]
 [-TrialEnvironmentVariable <ITrialComponentEnvironmentVariables>] [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for SweepJob.

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

### -EarlyTerminationDelayEvaluation
Number of intervals by which to delay the first evaluation.

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

### -EarlyTerminationEvaluationInterval
Interval (number of runs) between policy evaluations.

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

### -EarlyTerminationPolicyType
[Required] Name of policy configuration.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.EarlyTerminationPolicyType
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
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ISweepJobInputs
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

### -LimitMaxConcurrentTrial
Sweep Job max concurrent trials.

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

### -LimitMaxTotalTrial
Sweep Job max total trials.

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

### -LimitTrialTimeout
Sweep Job Trial timeout value.

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

### -ObjectiveGoal
[Required] Defines supported metric goals for hyperparameter tuning.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.Goal
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectivePrimaryMetric
[Required] Name of the metric to optimize.

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

### -Output
Mapping of output data bindings used in the job.
To construct, see NOTES section for OUTPUT properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ISweepJobOutputs
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

### -SamplingAlgorithmType
[Required] The algorithm used for generating hyperparameter values, along with configuration properties.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.SamplingAlgorithmType
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchSpace
[Required] A dictionary containing each parameter and its distribution.
The dictionary key is the name of the parameter.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.IAny
Parameter Sets: (All)
Aliases:

Required: True
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

### -TrialCodeId
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

### -TrialCommand
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

### -TrialEnvironmentId
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

### -TrialEnvironmentVariable
Environment variables included in the job.
To construct, see NOTES section for TRIALENVIRONMENTVARIABLE properties and create a hash table.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.ITrialComponentEnvironmentVariables
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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.SweepJob

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


INPUT <ISweepJobInputs>: Mapping of input data bindings used in the job.
  - `[(Any) <IJobInput>]`: This indicates any property can be added to this object.

OUTPUT <ISweepJobOutputs>: Mapping of output data bindings used in the job.
  - `[(Any) <IJobOutput>]`: This indicates any property can be added to this object.

PROPERTY <IResourceBaseProperties>: The asset property dictionary.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

RESOURCEPROPERTY <IResourceConfigurationProperties>: Additional properties bag.
  - `[(Any) <Object>]`: This indicates any property can be added to this object.

SERVICE <IJobBaseServices>: List of JobEndpoints.         For local jobs, a job endpoint will have an endpoint value of FileStreamObject.
  - `[(Any) <IJobService>]`: This indicates any property can be added to this object.

TAG <IResourceBaseTags>: Tag dictionary. Tags can be added, removed, and updated.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

TRIALENVIRONMENTVARIABLE <ITrialComponentEnvironmentVariables>: Environment variables included in the job.
  - `[(Any) <String>]`: This indicates any property can be added to this object.

## RELATED LINKS

