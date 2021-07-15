
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
Creates a role eligibility schedule request.
.Description
Creates a role eligibility schedule request.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleEligibilityScheduleRequest
.Link
https://docs.microsoft.com/powershell/module/az.authorization/new-azroleeligibilityschedulerequest
#>
function New-AzRoleEligibilityScheduleRequest {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleEligibilityScheduleRequest])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('RoleEligibilityScheduleRequestName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name of the role eligibility to create.
    # It can be any valid GUID.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role eligibility schedule request to create.
    # The scope can be any REST resource instance.
    # For example, use '/providers/Microsoft.Subscription/subscriptions/{subscription-id}/' for a subscription, '/providers/Microsoft.Subscription/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for a resource group, and '/providers/Microsoft.Subscription/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name}' for a resource.
    ${Scope},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The conditions on the role assignment.
    # This limits the resources it can be assigned to.
    # e.g.: @Resource[Microsoft.Storage/storageAccounts/blobServices/containers:ContainerName] StringEqualsIgnoreCase 'foo_storage_container'
    ${Condition},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # Version of the condition.
    # Currently accepted value is '2.0'
    ${ConditionVersion},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # Duration of the role eligibility schedule in TimeSpan.
    ${ExpirationDuration},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.DateTime]
    # End DateTime of the role eligibility schedule.
    ${ExpirationEndDateTime},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Support.Type])]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Support.Type]
    # Type of the role eligibility schedule expiration
    ${ExpirationType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # Justification for the role eligibility
    ${Justification},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The principal ID.
    ${PrincipalId},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Support.RequestType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Support.RequestType]
    # The type of the role assignment schedule request.
    # Eg: SelfActivate, AdminAssign etc
    ${RequestType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The role definition ID.
    ${RoleDefinitionId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.DateTime]
    # Start DateTime of the role eligibility schedule.
    ${ScheduleInfoStartDateTime},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The resultant role eligibility schedule id or the role eligibility schedule id being updated
    ${TargetRoleEligibilityScheduleId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The role eligibility schedule instance id being updated
    ${TargetRoleEligibilityScheduleInstanceId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # Ticket number for the role eligibility
    ${TicketNumber},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # Ticket system name for the role eligibility
    ${TicketSystem},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            CreateExpanded = 'Az.Authorization.private\New-AzRoleEligibilityScheduleRequest_CreateExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
