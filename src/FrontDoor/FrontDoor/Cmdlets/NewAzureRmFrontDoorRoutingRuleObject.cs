﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Management.Automation;
using System.Net;
using Microsoft.Azure.Commands.FrontDoor.Common;
using Microsoft.Azure.Commands.FrontDoor.Models;
using Microsoft.Azure.Management.FrontDoor;
using System.Linq;
using Microsoft.WindowsAzure.Commands.Utilities.Common;
using Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters;

namespace Microsoft.Azure.Commands.FrontDoor.Cmdlets
{
    /// <summary>
    /// Defines the New-AzFrontDoorRoutingRuleObject cmdlet.
    /// </summary>
    [Cmdlet("New", ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "FrontDoorRoutingRuleObject", DefaultParameterSetName = FieldsWithForwardingParameterSet), OutputType(typeof(PSRoutingRule))]
    public class NewAzureRmFrontDoorRoutingRuleObject : AzureFrontDoorCmdletBase
    {
        /// <summary>
        /// The resource group name that the RoutingRule will be created in.
        /// </summary>
        [Parameter(Mandatory = true, HelpMessage = "The resource group name that the RoutingRule will be created in.")]
        [ValidateNotNullOrEmpty]
        public string ResourceGroupName { get; set; }

        /// <summary>
        /// Front Door name.
        /// </summary>
        [Parameter(Mandatory = true, HelpMessage = "The name of the Front Door to which this routing rule belongs.")]
        [ValidateNotNullOrEmpty]
        public string FrontDoorName { get; set; }

        /// <summary>
        /// RoutingRule name.
        /// </summary>
        [Parameter(Mandatory = true, HelpMessage = "RoutingRule name.")]
        [ValidateNotNullOrEmpty]
        public string Name { get; set; }

        /// <summary>
        /// The name of Frontend endpoints associated with this rule
        /// </summary>
        [Parameter(Mandatory = true, HelpMessage = "The names of Frontend endpoints associated with this rule ")]
        [ValidateNotNullOrEmpty]
        public string[] FrontendEndpointName { get; set; }

        /// <summary>
        /// The name of BackendPool which this rule routes to
        /// </summary>
        [Parameter(Mandatory = true, ParameterSetName = FieldsWithForwardingParameterSet, HelpMessage = "The name of the BackendPool which this rule routes to")]
        [ValidateNotNullOrEmpty]
        public string BackendPoolName { get; set; }

        /// <summary>
        /// The Protocol schemes to match for this rule
        /// </summary>
        [Parameter(Mandatory = false, HelpMessage = "Protocol schemes to match for this rule. Default value is Http, Https")]
        public PSProtocol[] AcceptedProtocol { get; set; }

        /// <summary>
        /// The route patterns of the rule.
        /// </summary>
        [Parameter(Mandatory = false, HelpMessage = "The route patterns of the rule,  Must not have any * except possibly after the final / at the end of the path. Default value is /*")]
        public string[] PatternToMatch { get; set; }

        /// <summary>
        /// The custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithForwardingParameterSet, HelpMessage = "The custom path used to rewrite resource paths matched by this rule. Leave empty to use incoming path.")]
        public string CustomForwardingPath { get; set; }

        /// <summary>
        /// The protocol this rule will use when forwarding traffic to backends.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithForwardingParameterSet, HelpMessage = "The protocol this rule will use when forwarding traffic to backends. Default value is MatchRequest")]
        public PSForwardingProtocol ForwardingProtocol { get; set; }

        /// <summary>
        /// Whether to enable caching for this route.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithForwardingParameterSet, HelpMessage = "Whether to enable caching for this route. Default value is false")]
        public bool EnableCaching { get; set; }

        /// <summary>
        /// The treatment of URL query terms when forming the cache key.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithForwardingParameterSet, HelpMessage = "The treatment of URL query terms when forming the cache key. Default value is StripAll")]
        public PSQueryParameterStripDirective QueryParameterStripDirective { get; set; }

        /// <summary>
        /// Whether to use dynamic compression for cached content
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithForwardingParameterSet, HelpMessage = "Whether to enable dynamic compression for cached content. Default value is Enabled")]
        public PSEnabledState DynamicCompression { get; set; }

        /// <summary>
        /// The redirect type the rule will use when redirecting traffic.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithRedirectParameterSet, HelpMessage = "The redirect type the rule will use when redirecting traffic. Default Value is Moved")]
        public PSRedirectType RedirectType { get; set; }

        /// <summary>
        /// The protocol of the destination to where the traffic is redirected
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithRedirectParameterSet, HelpMessage = "The protocol of the destination to where the traffic is redirected. Default value is MatchRequest")]
        public PSRedirectProtocol RedirectProtocol { get; set; }

        /// <summary>
        /// Host to redirect. Leave empty to use use the incoming host as the destination host.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithRedirectParameterSet, HelpMessage = "Host to redirect. Leave empty to use use the incoming host as the destination host.")]
        public string CustomHost { get; set; }

        /// <summary>
        /// The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithRedirectParameterSet, HelpMessage = "The full path to redirect. Path cannot be empty and must start with /. Leave empty to use the incoming path as destination path.")]
        public string CustomPath { get; set; }

        /// <summary>
        /// Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithRedirectParameterSet, HelpMessage = "Fragment to add to the redirect URL. Fragment is the part of the URL that comes after #. Do not include the #.")]
        public string CustomFragment { get; set; }

        /// <summary>
        /// The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in <key>=<value> format. The first ? and & will be added automatically so do not include them in the front, but do separate multiple query strings with &.
        /// </summary>
        [Parameter(Mandatory = false, ParameterSetName = FieldsWithRedirectParameterSet, HelpMessage = "The set of query strings to be placed in the redirect URL. Setting this value would replace any existing query string; leave empty to preserve the incoming query string. Query string must be in <key>=<value> format. The first ? and & will be added automatically so do not include them in the front, but do separate multiple query strings with &.")]
        public string CustomQueryString { get; set; }

        /// <summary>
        /// Whether to enable use of this rule.
        /// </summary>
        [Parameter(Mandatory = false, HelpMessage = "Whether to enable use of this rule. Default value is Enabled")]
        public PSEnabledState EnabledState { get; set; }


        public override void ExecuteCmdlet()
        {
            string subid = DefaultContext.Subscription.Id;
            List<string> FrontendEndpointIds = FrontendEndpointName?.Select(x => string.Format("/subscriptions/{0}/resourceGroups/{1}/providers/Microsoft.Network/frontDoors/{2}/FrontendEndpoints/{3}",
                  subid, ResourceGroupName, FrontDoorName, x)).ToList();
            string BackendPoolId = string.Format("/subscriptions/{0}/resourceGroups/{1}/providers/Microsoft.Network/frontDoors/{2}/BackendPools/{3}",
                  subid, ResourceGroupName, FrontDoorName, BackendPoolName);
            var RoutingRule = new PSRoutingRule
            {
                Name = Name,
                EnabledState = !this.IsParameterBound(c => c.EnabledState) ? PSEnabledState.Enabled : EnabledState,
                FrontendEndpointIds = FrontendEndpointIds,
                AcceptedProtocols = !this.IsParameterBound(c => c.AcceptedProtocol) ? new List<PSProtocol> { PSProtocol.Http, PSProtocol.Https } : AcceptedProtocol?.ToList(),
                PatternsToMatch = !this.IsParameterBound(c => c.PatternToMatch) ? new List<string> { "/*" } : PatternToMatch?.ToList()
            };

            if (ParameterSetName == FieldsWithForwardingParameterSet)
            {
                RoutingRule.RouteConfiguration = new PSForwardingConfiguration
                {
                    CustomForwardingPath = CustomForwardingPath,
                    ForwardingProtocol = !this.IsParameterBound(c => c.ForwardingProtocol) ? PSForwardingProtocol.MatchRequest : ForwardingProtocol,
                    QueryParameterStripDirective = !this.IsParameterBound(c => c.QueryParameterStripDirective) ? PSQueryParameterStripDirective.StripAll : QueryParameterStripDirective,
                    DynamicCompression = !this.IsParameterBound(c => c.DynamicCompression) ? PSEnabledState.Enabled : DynamicCompression,
                    BackendPoolId = BackendPoolId,
                    EnableCaching = !this.IsParameterBound(c => c.EnableCaching) ? false : EnableCaching
                };
            }
            else if (ParameterSetName == FieldsWithRedirectParameterSet)
            {
                RoutingRule.RouteConfiguration = new PSRedirectConfiguration
                {
                    RedirectProtocol = !this.IsParameterBound(c => c.RedirectProtocol) ? PSRedirectProtocol.MatchRequest : RedirectProtocol,
                    RedirectType = !this.IsParameterBound(c => c.RedirectType) ? PSRedirectType.Moved : RedirectType,
                    CustomHost = !this.IsParameterBound(c => c.CustomHost) ? "" : CustomHost,
                    CustomFragment = CustomFragment,
                    CustomPath = !this.IsParameterBound(c => c.CustomPath) ? "" : CustomPath,
                    CustomQueryString = CustomQueryString
                };

            }
            WriteObject(RoutingRule);
        }

    }
}