
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Get the network interfaces of a cloud service.
.Description
Get the network interfaces of a cloud service.
#>

function Get-AzCloudServiceNetworkInterfaces {
    param(
        [Parameter(ParameterSetName="CloudServiceName", HelpMessage="Subscription.")]
        [Parameter(ParameterSetName = "CloudService", HelpMessage="Subscription.")]
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # Subscription credentials which uniquely identify Microsoft Azure subscription.
        # The subscription ID forms part of the URI for every service call.
        ${SubscriptionId},

        [Parameter(Mandatory=$true, ParameterSetName="CloudServiceName", HelpMessage="ResourceGroupName.")]
        [string] $ResourceGroupName,
        
        [Parameter(Mandatory=$true, ParameterSetName="CloudServiceName", HelpMessage="CloudServiceName.")]
        [string] $CloudServiceName,

        [Parameter(ParameterSetName="CloudServiceName", HelpMessage="RoleInstanceName.")]
        [Parameter(ParameterSetName = "CloudService", HelpMessage="RoleInstanceName.")]
        [string] $RoleInstanceName,

        [Parameter(Mandatory=$true, ParameterSetName="CloudService", HelpMessage="CloudService instance.")]
        [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.Api20210301.CloudService] $CloudService,
        
        #Region environment parameter
        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.Aks.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
        #EndRegion
    )
    process {
        if ($PSBoundParameters.ContainsKey("CloudService"))
        {
            $elements = $CloudService.Id.Split("/")
            if (($elements.Count -lt 5) -or ("subscriptions" -ne $elements[1]) -or ("resourceGroups" -ne $elements[3]))
            {
                throw "CloudService.Id should match the format: /subscriptions/(?<subscriptionId>[^/]+)/resourceGroups/(?<resourceGroupName>[^/]+)"
            }
            $SubscriptionId = $elements[2]
            $ResourceGroupName = $elements[4]
            $CloudServiceName = $CloudService.Name
            if ($Null -eq $CloudServiceName)
            {
                throw "CloudService.Name should not be Null"
            }
        }

        #Region environment parameter
        $EnvPSBoundParameters = @{}
        if ($PSBoundParameters.ContainsKey('Debug')) {
            $EnvPSBoundParameters['Debug'] = $Debug
        }
        if ($PSBoundParameters.ContainsKey('HttpPipelineAppend')) {
            $EnvPSBoundParameters['HttpPipelineAppend'] = $HttpPipelineAppend
        }
        if ($PSBoundParameters.ContainsKey('HttpPipelinePrepend')) {
            $EnvPSBoundParameters['HttpPipelinePrepend'] = $HttpPipelinePrepend
        }
        if ($PSBoundParameters.ContainsKey('Proxy')) {
            $EnvPSBoundParameters['Proxy'] = $Proxy
        }
        if ($PSBoundParameters.ContainsKey('ProxyCredential')) {
            $EnvPSBoundParameters['ProxyCredential'] = $ProxyCredential
        }
        if ($PSBoundParameters.ContainsKey('ProxyUseDefaultCredentials')) {
            $EnvPSBoundParameters['ProxyUseDefaultCredentials'] = $ProxyUseDefaultCredentials
        }

        $EnvPSBoundParameters['SubscriptionId'] = $SubscriptionId
        $EnvPSBoundParameters['ResourceGroupName'] = $ResourceGroupName
        #EndRegion
        # Create the URI as per the input
        if ($PSBoundParameters.ContainsKey("RoleInstanceName"))
        {
            $EnvPSBoundParameters['CloudServiceName'] = $CloudServiceName
            $EnvPSBoundParameters['RoleInstanceName'] = $RoleInstanceName
            $RoleInstance = Get-AzCloudServiceRoleInstance @EnvPSBoundParameters
            return $RoleInstance.NetworkProfile.NetworkInterfaces.Id
        }
        else
        {
            $EnvPSBoundParameters['Name'] = $CloudServiceName
            $CloudService = Get-AzCloudService @EnvPSBoundParameters
            return $CloudService.NetworkProfile.LoadBalancerConfiguration.Id
        }

        
    }
}
