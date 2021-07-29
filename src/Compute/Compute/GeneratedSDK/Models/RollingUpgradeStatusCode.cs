// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.Compute.Models
{
    using Newtonsoft.Json;
    using Newtonsoft.Json.Converters;
    using System.Runtime;
    using System.Runtime.Serialization;

    /// <summary>
    /// Defines values for RollingUpgradeStatusCode.
    /// </summary>
    [JsonConverter(typeof(StringEnumConverter))]
    public enum RollingUpgradeStatusCode
    {
        [EnumMember(Value = "RollingForward")]
        RollingForward,
        [EnumMember(Value = "Cancelled")]
        Cancelled,
        [EnumMember(Value = "Completed")]
        Completed,
        [EnumMember(Value = "Faulted")]
        Faulted
    }
    internal static class RollingUpgradeStatusCodeEnumExtension
    {
        internal static string ToSerializedValue(this RollingUpgradeStatusCode? value)
        {
            return value == null ? null : ((RollingUpgradeStatusCode)value).ToSerializedValue();
        }

        internal static string ToSerializedValue(this RollingUpgradeStatusCode value)
        {
            switch( value )
            {
                case RollingUpgradeStatusCode.RollingForward:
                    return "RollingForward";
                case RollingUpgradeStatusCode.Cancelled:
                    return "Cancelled";
                case RollingUpgradeStatusCode.Completed:
                    return "Completed";
                case RollingUpgradeStatusCode.Faulted:
                    return "Faulted";
            }
            return null;
        }

        internal static RollingUpgradeStatusCode? ParseRollingUpgradeStatusCode(this string value)
        {
            switch( value )
            {
                case "RollingForward":
                    return RollingUpgradeStatusCode.RollingForward;
                case "Cancelled":
                    return RollingUpgradeStatusCode.Cancelled;
                case "Completed":
                    return RollingUpgradeStatusCode.Completed;
                case "Faulted":
                    return RollingUpgradeStatusCode.Faulted;
            }
            return null;
        }
    }
}
