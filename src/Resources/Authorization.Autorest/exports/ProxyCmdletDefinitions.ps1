
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
Get the specified role eligibility schedule request.
.Description
Get the specified role eligibility schedule request.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleEligibilityScheduleRequest
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/get-azroleeligibilityschedulerequest
#>
function Get-AzRoleEligibilityScheduleRequest {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleEligibilityScheduleRequest])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Alias('RoleEligibilityScheduleRequestName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name (guid) of the role eligibility schedule request to get.
    ${Name},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role eligibility schedule request.
    ${Scope},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Query')]
    [System.String]
    # The filter to apply on the operation.
    # Use $filter=atScope() to return all role eligibility schedule requests at or above the scope.
    # Use $filter=principalId eq {id} to return all role eligibility schedule requests at, above or below the scope for the specified principal.
    # Use $filter=asRequestor() to return all role eligibility schedule requests requested by the current user.
    # Use $filter=asTarget() to return all role eligibility schedule requests created for the current user.
    # Use $filter=asApprover() to return all role eligibility schedule requests where the current user is an approver.
    ${Filter},

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
            Get = 'Az.Authorization.private\Get-AzRoleEligibilityScheduleRequest_Get';
            GetViaIdentity = 'Az.Authorization.private\Get-AzRoleEligibilityScheduleRequest_GetViaIdentity';
            List = 'Az.Authorization.private\Get-AzRoleEligibilityScheduleRequest_List';
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
Get the specified role eligibility schedule for a resource scope
.Description
Get the specified role eligibility schedule for a resource scope
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleEligibilitySchedule
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/get-azroleeligibilityschedule
#>
function Get-AzRoleEligibilitySchedule {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleEligibilitySchedule])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Alias('RoleEligibilityScheduleName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name (guid) of the role eligibility schedule to get.
    ${Name},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role eligibility schedule.
    ${Scope},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Query')]
    [System.String]
    # The filter to apply on the operation.
    # Use $filter=atScope() to return all role eligibility schedules at or above the scope.
    # Use $filter=principalId eq {id} to return all role eligibility schedules at, above or below the scope for the specified principal.
    # Use $filter=assignedTo('{userId}') to return all role eligibility schedules for the user.
    # Use $filter=asTarget() to return all role eligibility schedules created for the current user.
    ${Filter},

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
            Get = 'Az.Authorization.private\Get-AzRoleEligibilitySchedule_Get';
            GetViaIdentity = 'Az.Authorization.private\Get-AzRoleEligibilitySchedule_GetViaIdentity';
            List = 'Az.Authorization.private\Get-AzRoleEligibilitySchedule_List';
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
Get the specified role management policy assignment for a resource scope
.Description
Get the specified role management policy assignment for a resource scope
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicyAssignment
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/get-azrolemanagementpolicyassignment
#>
function Get-AzRoleManagementPolicyAssignment {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicyAssignment])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Alias('RoleManagementPolicyAssignmentName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name of format {guid_guid} the role management policy assignment to get.
    ${Name},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role management policy.
    ${Scope},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get = 'Az.Authorization.private\Get-AzRoleManagementPolicyAssignment_Get';
            GetViaIdentity = 'Az.Authorization.private\Get-AzRoleManagementPolicyAssignment_GetViaIdentity';
            List = 'Az.Authorization.private\Get-AzRoleManagementPolicyAssignment_List';
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
Get the specified role management policy for a resource scope
.Description
Get the specified role management policy for a resource scope
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicy
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/get-azrolemanagementpolicy
#>
function Get-AzRoleManagementPolicy {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicy])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Alias('RoleManagementPolicyName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name (guid) of the role management policy to get.
    ${Name},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role management policy.
    ${Scope},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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
            Get = 'Az.Authorization.private\Get-AzRoleManagementPolicy_Get';
            GetViaIdentity = 'Az.Authorization.private\Get-AzRoleManagementPolicy_GetViaIdentity';
            List = 'Az.Authorization.private\Get-AzRoleManagementPolicy_List';
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
Create a role management policy assignment
.Description
Create a role management policy assignment
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicyAssignment
.Link
https://docs.microsoft.com/powershell/module/az.authorization/new-azrolemanagementpolicyassignment
#>
function New-AzRoleManagementPolicyAssignment {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicyAssignment])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('RoleManagementPolicyAssignmentName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name of format {guid_guid} the role management policy assignment to upsert.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role management policy assignment to upsert.
    ${Scope},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The policy id role management policy assignment.
    ${PolicyId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The role definition of management policy assignment.
    ${RoleDefinitionId},

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
            CreateExpanded = 'Az.Authorization.private\New-AzRoleManagementPolicyAssignment_CreateExpanded';
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
Delete a role management policy assignment
.Description
Delete a role management policy assignment
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/remove-azrolemanagementpolicyassignment
#>
function Remove-AzRoleManagementPolicyAssignment {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Alias('RoleManagementPolicyAssignmentName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name of format {guid_guid} the role management policy assignment to delete.
    ${Name},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role management policy assignment to delete.
    ${Scope},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

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
            Delete = 'Az.Authorization.private\Remove-AzRoleManagementPolicyAssignment_Delete';
            DeleteViaIdentity = 'Az.Authorization.private\Remove-AzRoleManagementPolicyAssignment_DeleteViaIdentity';
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
Delete a role management policy
.Description
Delete a role management policy
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/remove-azrolemanagementpolicy
#>
function Remove-AzRoleManagementPolicy {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Delete', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Alias('RoleManagementPolicyName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name (guid) of the role management policy to upsert.
    ${Name},

    [Parameter(ParameterSetName='Delete', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role management policy to upsert.
    ${Scope},

    [Parameter(ParameterSetName='DeleteViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

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
            Delete = 'Az.Authorization.private\Remove-AzRoleManagementPolicy_Delete';
            DeleteViaIdentity = 'Az.Authorization.private\Remove-AzRoleManagementPolicy_DeleteViaIdentity';
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
Cancels a pending role eligibility schedule request.
.Description
Cancels a pending role eligibility schedule request.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/stop-azroleeligibilityschedulerequest
#>
function Stop-AzRoleEligibilityScheduleRequest {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='Cancel', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Alias('RoleEligibilityScheduleRequestName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name of the role eligibility request to cancel.
    ${Name},

    [Parameter(ParameterSetName='Cancel', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role eligibility request to cancel.
    ${Scope},

    [Parameter(ParameterSetName='CancelViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

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

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

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
            Cancel = 'Az.Authorization.private\Stop-AzRoleEligibilityScheduleRequest_Cancel';
            CancelViaIdentity = 'Az.Authorization.private\Stop-AzRoleEligibilityScheduleRequest_CancelViaIdentity';
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
Update a role management policy
.Description
Update a role management policy
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicy
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAuthorizationIdentity>: Identity Parameter
  [Id <String>]: Resource identity path
  [RoleEligibilityScheduleName <String>]: The name (guid) of the role eligibility schedule to get.
  [RoleEligibilityScheduleRequestName <String>]: The name of the role eligibility to create. It can be any valid GUID.
  [RoleManagementPolicyAssignmentName <String>]: The name of format {guid_guid} the role management policy assignment to get.
  [RoleManagementPolicyName <String>]: The name (guid) of the role management policy to get.
  [Scope <String>]: The scope of the role management policy.

RULE <IRoleManagementPolicyRule[]>: The rule applied to the policy.
  RuleType <RoleManagementPolicyRuleType>: The type of rule
  [Id <String>]: The id of the rule.
  [TargetCaller <String>]: The caller of the setting.
  [TargetEnforcedSetting <String[]>]: The list of enforced settings.
  [TargetInheritableSetting <String[]>]: The list of inheritable settings.
  [TargetLevel <String>]: The assignment level to which it is applied.
  [TargetObject <String[]>]: The list of target objects.
  [TargetOperation <String[]>]: The type of operation.
.Link
https://docs.microsoft.com/powershell/module/az.authorization/update-azrolemanagementpolicy
#>
function Update-AzRoleManagementPolicy {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicy])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Alias('RoleManagementPolicyName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The name (guid) of the role management policy to upsert.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [System.String]
    # The scope of the role management policy to upsert.
    ${Scope},

    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.IAuthorizationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The role management policy description.
    ${Description},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The role management policy display name.
    ${DisplayName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # The role management policy is default policy.
    ${IsOrganizationDefault},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.IRoleManagementPolicyRule[]]
    # The rule applied to the policy.
    # To construct, see NOTES section for RULE properties and create a hash table.
    ${Rule},

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
            UpdateExpanded = 'Az.Authorization.private\Update-AzRoleManagementPolicy_UpdateExpanded';
            UpdateViaIdentityExpanded = 'Az.Authorization.private\Update-AzRoleManagementPolicy_UpdateViaIdentityExpanded';
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
Create a in-memory object for RoleManagementPolicyRule
.Description
Create a in-memory object for RoleManagementPolicyRule
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.RoleManagementPolicyRule
.Link
https://docs.microsoft.com/powershell/module/az.Authorization/new-AzAuthorizationRoleManagementPolicyRuleObject
#>
function New-AzRoleManagementPolicyRuleObject {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.RoleManagementPolicyRule])]
[CmdletBinding(PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Support.RoleManagementPolicyRuleType]
    # The type of rule.
    ${RuleType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The id of the rule.
    ${Id},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The caller of the setting.
    ${TargetCaller},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String[]]
    # The list of enforced settings.
    ${TargetEnforcedSetting},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String[]]
    # The list of inheritable settings.
    ${TargetInheritableSetting},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String]
    # The assignment level to which it is applied.
    ${TargetLevel},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String[]]
    # The list of target objects.
    ${TargetObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Category('Body')]
    [System.String[]]
    # The type of operation.
    ${TargetOperation}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            __AllParameterSets = 'Az.Authorization.custom\New-AzRoleManagementPolicyRuleObject';
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
