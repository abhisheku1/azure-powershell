//
// Copyright (c) Microsoft and contributors.  All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//

// Warning: This code was generated by a tool.
//
// Changes to this file may cause incorrect behavior and will be lost if the
// code is regenerated.

using Microsoft.Azure.Commands.Compute.Automation.Models;
using Microsoft.Azure.Management.Compute;
using Microsoft.Azure.Management.Compute.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Management.Automation;

namespace Microsoft.Azure.Commands.Compute.Automation
{
    [Cmdlet(VerbsLifecycle.Invoke, ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "VmssVMRunCommand", DefaultParameterSetName = "DefaultParameter", SupportsShouldProcess = true)]
    [OutputType(typeof(PSRunCommandResult))]
    public partial class InvokeAzureRmVmssVMRunCommand : ComputeAutomationBaseCmdlet
    {
        public override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();
            ExecuteClientAction(() =>
            {
                if (ShouldProcess(this.VMScaleSetName, VerbsLifecycle.Invoke))
                {
                    string resourceGroupName;
                    string vmScaleSetName;
                    string instanceId;
                    switch (this.ParameterSetName)
                    {
                        case "ResourceIdParameter":
                            resourceGroupName = GetResourceGroupName(this.ResourceId);
                            vmScaleSetName = GetResourceName(this.ResourceId, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            instanceId = GetInstanceId(this.ResourceId, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            break;
                        case "ObjectParameter":
                            resourceGroupName = GetResourceGroupName(this.VirtualMachineScaleSetVM.Id);
                            vmScaleSetName = GetResourceName(this.VirtualMachineScaleSetVM.Id, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            instanceId = GetInstanceId(this.VirtualMachineScaleSetVM.Id, "Microsoft.Compute/VirtualMachineScaleSets", "virtualMachines");
                            break;
                        default:
                            resourceGroupName = this.ResourceGroupName;
                            vmScaleSetName = this.VMScaleSetName;
                            instanceId = this.InstanceId;
                            break;
                    }
                    RunCommandInput parameters = new RunCommandInput();
                    parameters.CommandId = this.CommandId;
                    if (this.ScriptPath != null)
                    {
                        parameters.Script = new List<string>();
                        PathIntrinsics currentPath = SessionState.Path;
                        var filePath = new System.IO.FileInfo(currentPath.GetUnresolvedProviderPathFromPSPath(this.ScriptPath));
                        string fileContent = Commands.Common.Authentication.Abstractions.FileUtilities.DataStore.ReadFileAsText(filePath.FullName);
                        parameters.Script = fileContent.Split(new string[] { "\r\n", "\n", "\r" }, StringSplitOptions.RemoveEmptyEntries);
                    }
                    if (this.Parameter != null)
                    {
                        var vParameter = new List<RunCommandInputParameter>();
                        foreach (var key in this.Parameter.Keys)
                        {
                            RunCommandInputParameter p = new RunCommandInputParameter();
                            p.Name = key.ToString();
                            p.Value = this.Parameter[key].ToString();
                            vParameter.Add(p);
                        }
                        parameters.Parameters = vParameter;
                    }

                    var result = VirtualMachineScaleSetVMsClient.RunCommand(resourceGroupName, vmScaleSetName, instanceId, parameters);
                    var psObject = new PSRunCommandResult();
                    ComputeAutomationAutoMapperProfile.Mapper.Map<RunCommandResult, PSRunCommandResult>(result, psObject);
                    WriteObject(psObject);
                }
            });
        }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ResourceManager.Common.ArgumentCompleters.ResourceGroupCompleter()]
        public string ResourceGroupName { get; set; }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 1,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        [ResourceManager.Common.ArgumentCompleters.ResourceNameCompleter("Microsoft.Compute/virtualMachineScaleSets", "ResourceGroupName")]
        [Alias("Name")]
        public string VMScaleSetName { get; set; }

        [Parameter(
            ParameterSetName = "DefaultParameter",
            Position = 2,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        public string InstanceId { get; set; }

        [Parameter(
            Mandatory = true)]
        [AllowNull]
        public string CommandId { get; set; }

        [Parameter(
            Mandatory = false)]
        [AllowNull]
        public string ScriptPath { get; set; }

        [Parameter(
            Mandatory = false)]
        [AllowNull]
        public Hashtable Parameter { get; set; }

        [Parameter(
            ParameterSetName = "ResourceIdParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true)]
        public string ResourceId { get; set; }

        [Parameter(
            ParameterSetName = "ObjectParameter",
            Position = 0,
            Mandatory = true,
            ValueFromPipelineByPropertyName = true,
            ValueFromPipeline = true)]
        [ValidateNotNullOrEmpty]
        public PSVirtualMachineScaleSetVM VirtualMachineScaleSetVM { get; set; }

        [Parameter(Mandatory = false, HelpMessage = "Run cmdlet in the background")]
        public SwitchParameter AsJob { get; set; }
    }
}
