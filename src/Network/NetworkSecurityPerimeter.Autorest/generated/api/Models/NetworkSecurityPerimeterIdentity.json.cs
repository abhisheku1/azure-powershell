// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Models
{
    using static Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Extensions;

    public partial class NetworkSecurityPerimeterIdentity
    {

        /// <summary>
        /// <c>AfterFromJson</c> will be called after the json deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>

        partial void AfterFromJson(Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject json);

        /// <summary>
        /// <c>AfterToJson</c> will be called after the json serialization has finished, allowing customization of the <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject"
        /// /> before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>

        partial void AfterToJson(ref Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject container);

        /// <summary>
        /// <c>BeforeFromJson</c> will be called before the json deserialization has commenced, allowing complete customization of
        /// the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <paramref name= "returnNow" />
        /// output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>
        /// <param name="returnNow">Determines if the rest of the deserialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeFromJson(Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject json, ref bool returnNow);

        /// <summary>
        /// <c>BeforeToJson</c> will be called before the json serialization has commenced, allowing complete customization of the
        /// object before it is serialized.
        /// If you wish to disable the default serialization entirely, return <c>true</c> in the <paramref name="returnNow" /> output
        /// parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeToJson(ref Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject container, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode"/> into an instance of Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Models.INetworkSecurityPerimeterIdentity.
        /// </summary>
        /// <param name="node">a <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode" /> to deserialize from.</param>
        /// <returns>
        /// an instance of Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Models.INetworkSecurityPerimeterIdentity.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Models.INetworkSecurityPerimeterIdentity FromJson(Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode node)
        {
            return node is Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject json ? new NetworkSecurityPerimeterIdentity(json) : null;
        }

        /// <summary>
        /// Deserializes a Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject into a new instance of <see cref="NetworkSecurityPerimeterIdentity" />.
        /// </summary>
        /// <param name="json">A Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject instance to deserialize from.</param>
        internal NetworkSecurityPerimeterIdentity(Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject json)
        {
            bool returnNow = false;
            BeforeFromJson(json, ref returnNow);
            if (returnNow)
            {
                return;
            }
            {_subscriptionId = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("subscriptionId"), out var __jsonSubscriptionId) ? (string)__jsonSubscriptionId : (string)SubscriptionId;}
            {_resourceGroupName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("resourceGroupName"), out var __jsonResourceGroupName) ? (string)__jsonResourceGroupName : (string)ResourceGroupName;}
            {_networkSecurityPerimeterName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("networkSecurityPerimeterName"), out var __jsonNetworkSecurityPerimeterName) ? (string)__jsonNetworkSecurityPerimeterName : (string)NetworkSecurityPerimeterName;}
            {_profileName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("profileName"), out var __jsonProfileName) ? (string)__jsonProfileName : (string)ProfileName;}
            {_accessRuleName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("accessRuleName"), out var __jsonAccessRuleName) ? (string)__jsonAccessRuleName : (string)AccessRuleName;}
            {_associationName = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("associationName"), out var __jsonAssociationName) ? (string)__jsonAssociationName : (string)AssociationName;}
            {_id = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString>("id"), out var __jsonId) ? (string)__jsonId : (string)Id;}
            AfterFromJson(json);
        }

        /// <summary>
        /// Serializes this instance of <see cref="NetworkSecurityPerimeterIdentity" /> into a <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode" />.
        /// </summary>
        /// <param name="container">The <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject"/> container to serialize this object into. If the caller
        /// passes in <c>null</c>, a new instance will be created and returned to the caller.</param>
        /// <param name="serializationMode">Allows the caller to choose the depth of the serialization. See <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.SerializationMode"/>.</param>
        /// <returns>
        /// a serialized instance of <see cref="NetworkSecurityPerimeterIdentity" /> as a <see cref="Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode" />.
        /// </returns>
        public Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode ToJson(Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject container, Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.SerializationMode serializationMode)
        {
            container = container ?? new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonObject();

            bool returnNow = false;
            BeforeToJson(ref container, ref returnNow);
            if (returnNow)
            {
                return container;
            }
            AddIf( null != (((object)this._subscriptionId)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._subscriptionId.ToString()) : null, "subscriptionId" ,container.Add );
            AddIf( null != (((object)this._resourceGroupName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._resourceGroupName.ToString()) : null, "resourceGroupName" ,container.Add );
            AddIf( null != (((object)this._networkSecurityPerimeterName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._networkSecurityPerimeterName.ToString()) : null, "networkSecurityPerimeterName" ,container.Add );
            AddIf( null != (((object)this._profileName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._profileName.ToString()) : null, "profileName" ,container.Add );
            AddIf( null != (((object)this._accessRuleName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._accessRuleName.ToString()) : null, "accessRuleName" ,container.Add );
            AddIf( null != (((object)this._associationName)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._associationName.ToString()) : null, "associationName" ,container.Add );
            AddIf( null != (((object)this._id)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.NetworkSecurityPerimeter.Runtime.Json.JsonString(this._id.ToString()) : null, "id" ,container.Add );
            AfterToJson(ref container);
            return container;
        }
    }
}