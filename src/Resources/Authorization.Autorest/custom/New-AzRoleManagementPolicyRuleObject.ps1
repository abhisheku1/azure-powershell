
    # ----------------------------------------------------------------------------------
    #
    # Copyright Microsoft Corporation
    # Licensed under the Apache License, Version 2.0 (the \"License\");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    # http://www.apache.org/licenses/LICENSE-2.0
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an \"AS IS\" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
    # ----------------------------------------------------------------------------------

    <#
    .Synopsis
    Create a in-memory object for RoleManagementPolicyRule
    .Description
    Create a in-memory object for RoleManagementPolicyRule

    .Outputs
    Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.RoleManagementPolicyRule
    .Link
    https://docs.microsoft.com/powershell/module/az.Authorization/new-AzAuthorizationRoleManagementPolicyRuleObject
    #>
    function New-AzRoleManagementPolicyRuleObject {
        [OutputType('Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.RoleManagementPolicyRule')]
        [CmdletBinding(PositionalBinding=$false)]
        Param(
    
            [Parameter(HelpMessage="The id of the rule.")]
            [string]
            $Id,
            [Parameter(Mandatory, HelpMessage="The type of rule.")]
            [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Support.RoleManagementPolicyRuleType]
            $RuleType,
            [Parameter(HelpMessage="The caller of the setting.")]
            [string]
            $TargetCaller,
            [Parameter(HelpMessage="The list of enforced settings.")]
            [string[]]
            $TargetEnforcedSetting,
            [Parameter(HelpMessage="The list of inheritable settings.")]
            [string[]]
            $TargetInheritableSetting,
            [Parameter(HelpMessage="The assignment level to which it is applied.")]
            [string]
            $TargetLevel,
            [Parameter(HelpMessage="The list of target objects.")]
            [string[]]
            $TargetObject,
            [Parameter(HelpMessage="The type of operation.")]
            [string[]]
            $TargetOperation
        )

        process {
            $Object = [Microsoft.Azure.PowerShell.Cmdlets.Authorization.Models.Api20201001Preview.RoleManagementPolicyRule]::New()
    
            $Object.Id = $Id
            $Object.RuleType = $RuleType
            $Object.TargetCaller = $TargetCaller
            $Object.TargetEnforcedSetting = $TargetEnforcedSetting
            $Object.TargetInheritableSetting = $TargetInheritableSetting
            $Object.TargetLevel = $TargetLevel
            $Object.TargetObject = $TargetObject
            $Object.TargetOperation = $TargetOperation
            return $Object
        }
    }
    
