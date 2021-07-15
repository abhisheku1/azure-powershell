
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
