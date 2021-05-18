namespace Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201
{
    using Microsoft.Azure.PowerShell.Cmdlets.Websites.Runtime.PowerShell;

    /// <summary>App Service error response.</summary>
    [System.ComponentModel.TypeConverter(typeof(DefaultErrorResponseTypeConverter))]
    public partial class DefaultErrorResponse
    {

        /// <summary>
        /// <c>AfterDeserializeDictionary</c> will be called after the deserialization has finished, allowing customization of the
        /// object before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>

        partial void AfterDeserializeDictionary(global::System.Collections.IDictionary content);

        /// <summary>
        /// <c>AfterDeserializePSObject</c> will be called after the deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>

        partial void AfterDeserializePSObject(global::System.Management.Automation.PSObject content);

        /// <summary>
        /// <c>BeforeDeserializeDictionary</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <see "returnNow" /> output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializeDictionary(global::System.Collections.IDictionary content, ref bool returnNow);

        /// <summary>
        /// <c>BeforeDeserializePSObject</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <see "returnNow" /> output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializePSObject(global::System.Management.Automation.PSObject content, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponse"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        internal DefaultErrorResponse(global::System.Collections.IDictionary content)
        {
            bool returnNow = false;
            BeforeDeserializeDictionary(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Error = (Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseError) content.GetValueForProperty("Error",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Error, Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponseErrorTypeConverter.ConvertFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Code = (string) content.GetValueForProperty("Code",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Code, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Message = (string) content.GetValueForProperty("Message",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Message, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Target = (string) content.GetValueForProperty("Target",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Target, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Detail = (Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseErrorDetailsItem[]) content.GetValueForProperty("Detail",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Detail, __y => TypeConverterExtensions.SelectToArray<Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseErrorDetailsItem>(__y, Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponseErrorDetailsItemTypeConverter.ConvertFrom));
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Innererror = (string) content.GetValueForProperty("Innererror",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Innererror, global::System.Convert.ToString);
            AfterDeserializeDictionary(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponse"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        internal DefaultErrorResponse(global::System.Management.Automation.PSObject content)
        {
            bool returnNow = false;
            BeforeDeserializePSObject(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Error = (Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseError) content.GetValueForProperty("Error",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Error, Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponseErrorTypeConverter.ConvertFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Code = (string) content.GetValueForProperty("Code",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Code, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Message = (string) content.GetValueForProperty("Message",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Message, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Target = (string) content.GetValueForProperty("Target",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Target, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Detail = (Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseErrorDetailsItem[]) content.GetValueForProperty("Detail",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Detail, __y => TypeConverterExtensions.SelectToArray<Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseErrorDetailsItem>(__y, Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponseErrorDetailsItemTypeConverter.ConvertFrom));
            ((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Innererror = (string) content.GetValueForProperty("Innererror",((Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponseInternal)this).Innererror, global::System.Convert.ToString);
            AfterDeserializePSObject(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponse"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponse" />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponse DeserializeFromDictionary(global::System.Collections.IDictionary content)
        {
            return new DefaultErrorResponse(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.DefaultErrorResponse"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponse" />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponse DeserializeFromPSObject(global::System.Management.Automation.PSObject content)
        {
            return new DefaultErrorResponse(content);
        }

        /// <summary>
        /// Creates a new instance of <see cref="DefaultErrorResponse" />, deserializing the content from a json string.
        /// </summary>
        /// <param name="jsonText">a string containing a JSON serialized instance of this model.</param>
        /// <returns>an instance of the <see cref="className" /> model class.</returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.Websites.Models.Api20201201.IDefaultErrorResponse FromJsonString(string jsonText) => FromJson(Microsoft.Azure.PowerShell.Cmdlets.Websites.Runtime.Json.JsonNode.Parse(jsonText));

        /// <summary>Serializes this instance to a json string.</summary>

        /// <returns>a <see cref="System.String" /> containing this model serialized to JSON text.</returns>
        public string ToJsonString() => ToJson(null, Microsoft.Azure.PowerShell.Cmdlets.Websites.Runtime.SerializationMode.IncludeAll)?.ToString();
    }
    /// App Service error response.
    [System.ComponentModel.TypeConverter(typeof(DefaultErrorResponseTypeConverter))]
    public partial interface IDefaultErrorResponse

    {

    }
}