---
external help file:
Module Name: Az.MachineLearningWorkspaces
online version: https://docs.microsoft.com/powershell/module/az.MLWorkspace/new-AzMLWorkspaceAksObject
schema: 2.0.0
---

# New-AzMLWorkspaceAksObject

## SYNOPSIS
Create an in-memory object for Aks.

## SYNTAX

```
New-AzMLWorkspaceAksObject [-AgentCount <Int32>] [-AgentVMSize <String>]
 [-AkNetworkingConfigurationDnsServiceIP <String>] [-AkNetworkingConfigurationDockerBridgeCidr <String>]
 [-AkNetworkingConfigurationServiceCidr <String>] [-AkNetworkingConfigurationSubnetId <String>]
 [-ClusterFqdn <String>] [-ClusterPurpose <ClusterPurpose>] [-Description <String>]
 [-DisableLocalAuth <Boolean>] [-LoadBalancerSubnet <String>] [-LoadBalancerType <LoadBalancerType>]
 [-ResourceId <String>] [-SslConfigurationCert <String>] [-SslConfigurationCname <String>]
 [-SslConfigurationKey <String>] [-SslConfigurationLeafDomainLabel <String>]
 [-SslConfigurationOverwriteExistingDomain <Boolean>] [-SslConfigurationStatus <SslConfigStatus>]
 [<CommonParameters>]
```

## DESCRIPTION
Create an in-memory object for Aks.

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

### -AgentCount
Number of agents.

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

### -AgentVMSize
Agent virtual machine size.

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

### -AkNetworkingConfigurationDnsServiceIP
An IP address assigned to the Kubernetes DNS service.
It must be within the Kubernetes service address range specified in serviceCidr.

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

### -AkNetworkingConfigurationDockerBridgeCidr
A CIDR notation IP range assigned to the Docker bridge network.
It must not overlap with any Subnet IP ranges or the Kubernetes service address range.

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

### -AkNetworkingConfigurationServiceCidr
A CIDR notation IP range from which to assign service cluster IPs.
It must not overlap with any Subnet IP ranges.

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

### -AkNetworkingConfigurationSubnetId
Virtual network subnet resource ID the compute nodes belong to.

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

### -ClusterFqdn
Cluster full qualified domain name.

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

### -ClusterPurpose
Intended usage of the cluster.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.ClusterPurpose
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
The description of the Machine Learning compute.

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

### -DisableLocalAuth
Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.

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

### -LoadBalancerSubnet
Load Balancer Subnet.

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

### -LoadBalancerType
Load Balancer Type.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.LoadBalancerType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceId
ARM resource id of the underlying compute.

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

### -SslConfigurationCert
Cert data.

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

### -SslConfigurationCname
CNAME of the cert.

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

### -SslConfigurationKey
Key data.

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

### -SslConfigurationLeafDomainLabel
Leaf domain label of public endpoint.

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

### -SslConfigurationOverwriteExistingDomain
Indicates whether to overwrite existing domain label.

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

### -SslConfigurationStatus
Enable or disable ssl for scoring.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Support.SslConfigStatus
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

### Microsoft.Azure.PowerShell.Cmdlets.MachineLearningWorkspaces.Models.Api20220501.Aks

## NOTES

ALIASES

## RELATED LINKS

