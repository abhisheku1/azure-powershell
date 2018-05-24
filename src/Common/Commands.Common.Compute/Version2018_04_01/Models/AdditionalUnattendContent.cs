// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Commands.Common.Compute.Version_2018_04.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// Specifies additional XML formatted information that can be included in
    /// the Unattend.xml file, which is used by Windows Setup. Contents are
    /// defined by setting name, component name, and the pass in which the
    /// content is applied.
    /// </summary>
    public partial class AdditionalUnattendContent
    {
        /// <summary>
        /// Initializes a new instance of the AdditionalUnattendContent class.
        /// </summary>
        public AdditionalUnattendContent()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the AdditionalUnattendContent class.
        /// </summary>
        /// <param name="passName">The pass name. Currently, the only allowable
        /// value is OobeSystem. Possible values include: 'OobeSystem'</param>
        /// <param name="componentName">The component name. Currently, the only
        /// allowable value is Microsoft-Windows-Shell-Setup. Possible values
        /// include: 'Microsoft-Windows-Shell-Setup'</param>
        /// <param name="settingName">Specifies the name of the setting to
        /// which the content applies. Possible values are: FirstLogonCommands
        /// and AutoLogon. Possible values include: 'AutoLogon',
        /// 'FirstLogonCommands'</param>
        /// <param name="content">Specifies the XML formatted content that is
        /// added to the unattend.xml file for the specified path and
        /// component. The XML must be less than 4KB and must include the root
        /// element for the setting or feature that is being inserted.</param>
        public AdditionalUnattendContent(PassNames? passName = default(PassNames?), ComponentNames? componentName = default(ComponentNames?), SettingNames? settingName = default(SettingNames?), string content = default(string))
        {
            PassName = passName;
            ComponentName = componentName;
            SettingName = settingName;
            Content = content;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the pass name. Currently, the only allowable value is
        /// OobeSystem. Possible values include: 'OobeSystem'
        /// </summary>
        [JsonProperty(PropertyName = "passName")]
        public PassNames? PassName { get; set; }

        /// <summary>
        /// Gets or sets the component name. Currently, the only allowable
        /// value is Microsoft-Windows-Shell-Setup. Possible values include:
        /// 'Microsoft-Windows-Shell-Setup'
        /// </summary>
        [JsonProperty(PropertyName = "componentName")]
        public ComponentNames? ComponentName { get; set; }

        /// <summary>
        /// Gets or sets specifies the name of the setting to which the content
        /// applies. Possible values are: FirstLogonCommands and AutoLogon.
        /// Possible values include: 'AutoLogon', 'FirstLogonCommands'
        /// </summary>
        [JsonProperty(PropertyName = "settingName")]
        public SettingNames? SettingName { get; set; }

        /// <summary>
        /// Gets or sets specifies the XML formatted content that is added to
        /// the unattend.xml file for the specified path and component. The XML
        /// must be less than 4KB and must include the root element for the
        /// setting or feature that is being inserted.
        /// </summary>
        [JsonProperty(PropertyName = "content")]
        public string Content { get; set; }

    }
}
