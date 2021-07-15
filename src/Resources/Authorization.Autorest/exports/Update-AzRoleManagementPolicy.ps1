
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
