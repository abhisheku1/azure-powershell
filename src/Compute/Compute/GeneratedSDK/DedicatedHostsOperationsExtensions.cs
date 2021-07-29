// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.Compute
{
    using Microsoft.Rest;
    using Microsoft.Rest.Azure;
    using Models;
    using System.Threading;
    using System.Threading.Tasks;

    /// <summary>
    /// Extension methods for DedicatedHostsOperations.
    /// </summary>
    public static partial class DedicatedHostsOperationsExtensions
    {
            /// <summary>
            /// Create or update a dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Create Dedicated Host.
            /// </param>
            public static DedicatedHost CreateOrUpdate(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHost parameters)
            {
                return operations.CreateOrUpdateAsync(resourceGroupName, hostGroupName, hostName, parameters).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Create or update a dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Create Dedicated Host.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<DedicatedHost> CreateOrUpdateAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHost parameters, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.CreateOrUpdateWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, parameters, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Update an dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Update Dedicated Host operation.
            /// </param>
            public static DedicatedHost Update(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHostUpdate parameters)
            {
                return operations.UpdateAsync(resourceGroupName, hostGroupName, hostName, parameters).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Update an dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Update Dedicated Host operation.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<DedicatedHost> UpdateAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHostUpdate parameters, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.UpdateWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, parameters, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Delete a dedicated host.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host.
            /// </param>
            public static void Delete(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName)
            {
                operations.DeleteAsync(resourceGroupName, hostGroupName, hostName).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Delete a dedicated host.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task DeleteAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, CancellationToken cancellationToken = default(CancellationToken))
            {
                (await operations.DeleteWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, null, cancellationToken).ConfigureAwait(false)).Dispose();
            }

            /// <summary>
            /// Retrieves information about a dedicated host.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host.
            /// </param>
            /// <param name='expand'>
            /// The expand expression to apply on the operation. Possible values include:
            /// 'instanceView'
            /// </param>
            public static DedicatedHost Get(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, InstanceViewTypes? expand = default(InstanceViewTypes?))
            {
                return operations.GetAsync(resourceGroupName, hostGroupName, hostName, expand).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Retrieves information about a dedicated host.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host.
            /// </param>
            /// <param name='expand'>
            /// The expand expression to apply on the operation. Possible values include:
            /// 'instanceView'
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<DedicatedHost> GetAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, InstanceViewTypes? expand = default(InstanceViewTypes?), CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.GetWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, expand, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Lists all of the dedicated hosts in the specified dedicated host group. Use
            /// the nextLink property in the response to get the next page of dedicated
            /// hosts.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            public static IPage<DedicatedHost> ListByHostGroup(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName)
            {
                return operations.ListByHostGroupAsync(resourceGroupName, hostGroupName).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Lists all of the dedicated hosts in the specified dedicated host group. Use
            /// the nextLink property in the response to get the next page of dedicated
            /// hosts.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<IPage<DedicatedHost>> ListByHostGroupAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.ListByHostGroupWithHttpMessagesAsync(resourceGroupName, hostGroupName, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Create or update a dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Create Dedicated Host.
            /// </param>
            public static DedicatedHost BeginCreateOrUpdate(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHost parameters)
            {
                return operations.BeginCreateOrUpdateAsync(resourceGroupName, hostGroupName, hostName, parameters).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Create or update a dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Create Dedicated Host.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<DedicatedHost> BeginCreateOrUpdateAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHost parameters, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.BeginCreateOrUpdateWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, parameters, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Update an dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Update Dedicated Host operation.
            /// </param>
            public static DedicatedHost BeginUpdate(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHostUpdate parameters)
            {
                return operations.BeginUpdateAsync(resourceGroupName, hostGroupName, hostName, parameters).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Update an dedicated host .
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host .
            /// </param>
            /// <param name='parameters'>
            /// Parameters supplied to the Update Dedicated Host operation.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<DedicatedHost> BeginUpdateAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, DedicatedHostUpdate parameters, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.BeginUpdateWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, parameters, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

            /// <summary>
            /// Delete a dedicated host.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host.
            /// </param>
            public static void BeginDelete(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName)
            {
                operations.BeginDeleteAsync(resourceGroupName, hostGroupName, hostName).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Delete a dedicated host.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='resourceGroupName'>
            /// The name of the resource group.
            /// </param>
            /// <param name='hostGroupName'>
            /// The name of the dedicated host group.
            /// </param>
            /// <param name='hostName'>
            /// The name of the dedicated host.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task BeginDeleteAsync(this IDedicatedHostsOperations operations, string resourceGroupName, string hostGroupName, string hostName, CancellationToken cancellationToken = default(CancellationToken))
            {
                (await operations.BeginDeleteWithHttpMessagesAsync(resourceGroupName, hostGroupName, hostName, null, cancellationToken).ConfigureAwait(false)).Dispose();
            }

            /// <summary>
            /// Lists all of the dedicated hosts in the specified dedicated host group. Use
            /// the nextLink property in the response to get the next page of dedicated
            /// hosts.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='nextPageLink'>
            /// The NextLink from the previous successful call to List operation.
            /// </param>
            public static IPage<DedicatedHost> ListByHostGroupNext(this IDedicatedHostsOperations operations, string nextPageLink)
            {
                return operations.ListByHostGroupNextAsync(nextPageLink).GetAwaiter().GetResult();
            }

            /// <summary>
            /// Lists all of the dedicated hosts in the specified dedicated host group. Use
            /// the nextLink property in the response to get the next page of dedicated
            /// hosts.
            /// </summary>
            /// <param name='operations'>
            /// The operations group for this extension method.
            /// </param>
            /// <param name='nextPageLink'>
            /// The NextLink from the previous successful call to List operation.
            /// </param>
            /// <param name='cancellationToken'>
            /// The cancellation token.
            /// </param>
            public static async Task<IPage<DedicatedHost>> ListByHostGroupNextAsync(this IDedicatedHostsOperations operations, string nextPageLink, CancellationToken cancellationToken = default(CancellationToken))
            {
                using (var _result = await operations.ListByHostGroupNextWithHttpMessagesAsync(nextPageLink, null, cancellationToken).ConfigureAwait(false))
                {
                    return _result.Body;
                }
            }

    }
}
