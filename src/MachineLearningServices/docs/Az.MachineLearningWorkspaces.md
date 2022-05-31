---
Module Name: Az.MachineLearningWorkspaces
Module Guid: 2cba45aa-6788-45db-94bf-7aa7a2b8312a
Download Help Link: https://docs.microsoft.com/powershell/module/az.machinelearningworkspaces
Help Version: 1.0.0.0
Locale: en-US
---

# Az.MachineLearningWorkspaces Module
## Description
Microsoft Azure PowerShell: MachineLearningWorkspaces cmdlets

## Az.MachineLearningWorkspaces Cmdlets
### [Get-AzMLServiceQuota](Get-AzMLServiceQuota.md)
Gets the currently assigned Workspace Quotas based on VMFamily.

### [Get-AzMLServiceUsage](Get-AzMLServiceUsage.md)
Gets the current usage information as well as limits for AML resources for given subscription and location.

### [Get-AzMLServiceVMSize](Get-AzMLServiceVMSize.md)
Returns supported VM Sizes in a location

### [Get-AzMlWorkspace](Get-AzMlWorkspace.md)
Gets the properties of the specified machine learning workspace.

### [Get-AzMlWorkspaceBatchDeployment](Get-AzMlWorkspaceBatchDeployment.md)
Gets a batch inference deployment by id.

### [Get-AzMlWorkspaceBatchEndpoint](Get-AzMlWorkspaceBatchEndpoint.md)
Gets a batch inference endpoint by name.

### [Get-AzMlWorkspaceBatchEndpointKey](Get-AzMlWorkspaceBatchEndpointKey.md)
Lists batch Inference Endpoint keys.

### [Get-AzMlWorkspaceCodeContainer](Get-AzMlWorkspaceCodeContainer.md)
Get container.

### [Get-AzMlWorkspaceCodeVersion](Get-AzMlWorkspaceCodeVersion.md)
Get version.

### [Get-AzMlWorkspaceComponentContainer](Get-AzMlWorkspaceComponentContainer.md)
Get container.

### [Get-AzMlWorkspaceComponentVersion](Get-AzMlWorkspaceComponentVersion.md)
Get version.

### [Get-AzMlWorkspaceCompute](Get-AzMlWorkspaceCompute.md)
Gets compute definition by its name.
Any secrets (storage keys, service credentials, etc) are not returned - use 'keys' nested resource to get them.

### [Get-AzMlWorkspaceComputeKey](Get-AzMlWorkspaceComputeKey.md)
Gets secrets related to Machine Learning compute (storage keys, service credentials, etc).

### [Get-AzMlWorkspaceComputeNode](Get-AzMlWorkspaceComputeNode.md)
Get the details (e.g IP address, port etc) of all the compute nodes in the compute.

### [Get-AzMlWorkspaceConnection](Get-AzMlWorkspaceConnection.md)


### [Get-AzMlWorkspaceDataContainer](Get-AzMlWorkspaceDataContainer.md)
Get container.

### [Get-AzMlWorkspaceDatastore](Get-AzMlWorkspaceDatastore.md)
Get datastore.

### [Get-AzMlWorkspaceDatastoreSecret](Get-AzMlWorkspaceDatastoreSecret.md)
Get datastore secrets.

### [Get-AzMlWorkspaceDataVersion](Get-AzMlWorkspaceDataVersion.md)
Get version.

### [Get-AzMlWorkspaceEnvironmentContainer](Get-AzMlWorkspaceEnvironmentContainer.md)
Get container.

### [Get-AzMlWorkspaceEnvironmentVersion](Get-AzMlWorkspaceEnvironmentVersion.md)
Get version.

### [Get-AzMlWorkspaceFeature](Get-AzMlWorkspaceFeature.md)
Lists all enabled features for a workspace

### [Get-AzMlWorkspaceJob](Get-AzMlWorkspaceJob.md)
Gets a Job by name/id.

### [Get-AzMlWorkspaceKey](Get-AzMlWorkspaceKey.md)
Lists all the keys associated with this workspace.
This includes keys for the storage account, app insights and password for container registry

### [Get-AzMlWorkspaceModelContainer](Get-AzMlWorkspaceModelContainer.md)
Get container.

### [Get-AzMlWorkspaceModelVersion](Get-AzMlWorkspaceModelVersion.md)
Get version.

### [Get-AzMlWorkspaceNotebookAccessToken](Get-AzMlWorkspaceNotebookAccessToken.md)
return notebook access token and refresh token

### [Get-AzMlWorkspaceNotebookKey](Get-AzMlWorkspaceNotebookKey.md)
List keys of a notebook.

### [Get-AzMlWorkspaceOnlineDeployment](Get-AzMlWorkspaceOnlineDeployment.md)
Get Inference Deployment Deployment.

### [Get-AzMlWorkspaceOnlineDeploymentLog](Get-AzMlWorkspaceOnlineDeploymentLog.md)
Polls an Endpoint operation.

### [Get-AzMlWorkspaceOnlineDeploymentSku](Get-AzMlWorkspaceOnlineDeploymentSku.md)
List Inference Endpoint Deployment Skus.

### [Get-AzMlWorkspaceOnlineEndpoint](Get-AzMlWorkspaceOnlineEndpoint.md)
Get Online Endpoint.

### [Get-AzMlWorkspaceOnlineEndpointKey](Get-AzMlWorkspaceOnlineEndpointKey.md)
List EndpointAuthKeys for an Endpoint using Key-based authentication.

### [Get-AzMlWorkspaceOnlineEndpointToken](Get-AzMlWorkspaceOnlineEndpointToken.md)
Retrieve a valid AAD token for an Endpoint using AMLToken-based authentication.

### [Get-AzMlWorkspaceOutboundNetworkDependencyEndpoint](Get-AzMlWorkspaceOutboundNetworkDependencyEndpoint.md)
Called by Client (Portal, CLI, etc) to get a list of all external outbound dependencies (FQDNs) programmatically.

### [Get-AzMlWorkspaceStorageAccountKey](Get-AzMlWorkspaceStorageAccountKey.md)
List storage account keys of a workspace.

### [Invoke-AzMlWorkspaceDiagnose](Invoke-AzMlWorkspaceDiagnose.md)
Diagnose workspace setup issue.

### [Invoke-AzMlWorkspaceNotebook](Invoke-AzMlWorkspaceNotebook.md)
Prepare a notebook.

### [New-AzMlWorkspace](New-AzMlWorkspace.md)
Creates or updates a workspace with the specified parameters.

### [New-AzMLWorkspaceAksObject](New-AzMLWorkspaceAksObject.md)
Create an in-memory object for Aks.

### [New-AzMLWorkspaceAmlComputeObject](New-AzMLWorkspaceAmlComputeObject.md)
Create an in-memory object for AmlCompute.

### [New-AzMlWorkspaceBatchDeployment](New-AzMlWorkspaceBatchDeployment.md)
Creates/updates a batch inference deployment (asynchronous).

### [New-AzMlWorkspaceBatchEndpoint](New-AzMlWorkspaceBatchEndpoint.md)
Creates a batch inference endpoint (asynchronous).

### [New-AzMlWorkspaceCodeContainer](New-AzMlWorkspaceCodeContainer.md)
Create or update container.

### [New-AzMlWorkspaceCodeVersion](New-AzMlWorkspaceCodeVersion.md)
Create or update version.

### [New-AzMLWorkspaceCommandJobObject](New-AzMLWorkspaceCommandJobObject.md)
Create an in-memory object for CommandJob.

### [New-AzMlWorkspaceComponentContainer](New-AzMlWorkspaceComponentContainer.md)
Create or update container.

### [New-AzMlWorkspaceComponentVersion](New-AzMlWorkspaceComponentVersion.md)
Create or update version.

### [New-AzMlWorkspaceCompute](New-AzMlWorkspaceCompute.md)
Creates or updates compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.
If your intent is to create a new compute, do a GET first to verify that it does not exist yet.

### [New-AzMLWorkspaceComputeInstanceObject](New-AzMLWorkspaceComputeInstanceObject.md)
Create an in-memory object for ComputeInstance.

### [New-AzMLWorkspaceComputeStartStopScheduleObject](New-AzMLWorkspaceComputeStartStopScheduleObject.md)
Create an in-memory object for ComputeStartStopSchedule.

### [New-AzMlWorkspaceConnection](New-AzMlWorkspaceConnection.md)


### [New-AzMLWorkspaceCustomModelJobInputObject](New-AzMLWorkspaceCustomModelJobInputObject.md)
Create an in-memory object for CustomModelJobInput.

### [New-AzMLWorkspaceCustomModelJobOutputObject](New-AzMLWorkspaceCustomModelJobOutputObject.md)
Create an in-memory object for CustomModelJobOutput.

### [New-AzMLWorkspaceDatabricksObject](New-AzMLWorkspaceDatabricksObject.md)
Create an in-memory object for Databricks.

### [New-AzMlWorkspaceDataContainer](New-AzMlWorkspaceDataContainer.md)
Create or update container.

### [New-AzMLWorkspaceDataFactoryObject](New-AzMLWorkspaceDataFactoryObject.md)
Create an in-memory object for DataFactory.

### [New-AzMLWorkspaceDataLakeAnalyticsObject](New-AzMLWorkspaceDataLakeAnalyticsObject.md)
Create an in-memory object for DataLakeAnalytics.

### [New-AzMlWorkspaceDatastore](New-AzMlWorkspaceDatastore.md)
Create or update datastore.

### [New-AzMLWorkspaceDatastoreBlobObject](New-AzMLWorkspaceDatastoreBlobObject.md)
Create an in-memory object for AzureBlobDatastore.

### [New-AzMLWorkspaceDatastoreCredentialsObject](New-AzMLWorkspaceDatastoreCredentialsObject.md)
Create an in-memory object for CertificateDatastoreCredentials.

### [New-AzMLWorkspaceDatastoreDataLakeGen1Object](New-AzMLWorkspaceDatastoreDataLakeGen1Object.md)
Create an in-memory object for AzureDataLakeGen1Datastore.

### [New-AzMLWorkspaceDatastoreDataLakeGen2Object](New-AzMLWorkspaceDatastoreDataLakeGen2Object.md)
Create an in-memory object for AzureDataLakeGen2Datastore.

### [New-AzMLWorkspaceDatastoreFileObject](New-AzMLWorkspaceDatastoreFileObject.md)
Create an in-memory object for AzureFileDatastore.

### [New-AzMLWorkspaceDatastoreKeyCredentialObject](New-AzMLWorkspaceDatastoreKeyCredentialObject.md)
Create an in-memory object for AccountKeyDatastoreCredentials.

### [New-AzMLWorkspaceDatastoreNoneCredentialsObject](New-AzMLWorkspaceDatastoreNoneCredentialsObject.md)
Create an in-memory object for NoneDatastoreCredentials.

### [New-AzMLWorkspaceDatastoreSasCredentialsObject](New-AzMLWorkspaceDatastoreSasCredentialsObject.md)
Create an in-memory object for SasDatastoreCredentials.

### [New-AzMLWorkspaceDatastoreServicePrincipalCredentialsObject](New-AzMLWorkspaceDatastoreServicePrincipalCredentialsObject.md)
Create an in-memory object for ServicePrincipalDatastoreCredentials.

### [New-AzMlWorkspaceDataVersion](New-AzMlWorkspaceDataVersion.md)
Create or update version.

### [New-AzMlWorkspaceEnvironmentContainer](New-AzMlWorkspaceEnvironmentContainer.md)
Create or update container.

### [New-AzMlWorkspaceEnvironmentVersion](New-AzMlWorkspaceEnvironmentVersion.md)
Creates or updates an EnvironmentVersion.

### [New-AzMLWorkspaceHDInsightObject](New-AzMLWorkspaceHDInsightObject.md)
Create an in-memory object for HDInsight.

### [New-AzMlWorkspaceJob](New-AzMlWorkspaceJob.md)
Creates and executes a Job.

### [New-AzMLWorkspaceJobServiceObject](New-AzMLWorkspaceJobServiceObject.md)
Create an in-memory object for JobService.

### [New-AzMLWorkspaceKubernetesObject](New-AzMLWorkspaceKubernetesObject.md)
Create an in-memory object for Kubernetes.

### [New-AzMLWorkspaceLiteralJobInputObject](New-AzMLWorkspaceLiteralJobInputObject.md)
Create an in-memory object for LiteralJobInput.

### [New-AzMLWorkspaceMLFlowModelJobInputObject](New-AzMLWorkspaceMLFlowModelJobInputObject.md)
Create an in-memory object for MLFlowModelJobInput.

### [New-AzMLWorkspaceMLFlowModelJobOutputObject](New-AzMLWorkspaceMLFlowModelJobOutputObject.md)
Create an in-memory object for MLFlowModelJobOutput.

### [New-AzMLWorkspaceMLTableJobInputObject](New-AzMLWorkspaceMLTableJobInputObject.md)
Create an in-memory object for MLTableJobInput.

### [New-AzMLWorkspaceMLTableJobOutputObject](New-AzMLWorkspaceMLTableJobOutputObject.md)
Create an in-memory object for MLTableJobOutput.

### [New-AzMlWorkspaceModelContainer](New-AzMlWorkspaceModelContainer.md)
Create or update container.

### [New-AzMlWorkspaceModelVersion](New-AzMlWorkspaceModelVersion.md)
Create or update version.

### [New-AzMlWorkspaceOnlineDeployment](New-AzMlWorkspaceOnlineDeployment.md)
Create or update Inference Endpoint Deployment (asynchronous).

### [New-AzMlWorkspaceOnlineEndpoint](New-AzMlWorkspaceOnlineEndpoint.md)
Create or update Online Endpoint (asynchronous).

### [New-AzMlWorkspaceOnlineEndpointKey](New-AzMlWorkspaceOnlineEndpointKey.md)
Regenerate EndpointAuthKeys for an Endpoint using Key-based authentication (asynchronous).

### [New-AzMLWorkspacePipelineJobObject](New-AzMLWorkspacePipelineJobObject.md)
Create an in-memory object for PipelineJob.

### [New-AzMLWorkspaceQuotaBasePropertiesObject](New-AzMLWorkspaceQuotaBasePropertiesObject.md)
Create an in-memory object for QuotaBaseProperties.

### [New-AzMLWorkspaceQuotaPropertiesObject](New-AzMLWorkspaceQuotaPropertiesObject.md)
Create an in-memory object for QuotaBaseProperties.

### [New-AzMLWorkspaceSweepJobObject](New-AzMLWorkspaceSweepJobObject.md)
Create an in-memory object for SweepJob.

### [New-AzMLWorkspaceSynapseSparkObject](New-AzMLWorkspaceSynapseSparkObject.md)
Create an in-memory object for SynapseSpark.

### [New-AzMLWorkspaceTritonModelJobInputObject](New-AzMLWorkspaceTritonModelJobInputObject.md)
Create an in-memory object for TritonModelJobInput.

### [New-AzMLWorkspaceTritonModelJobOutputObject](New-AzMLWorkspaceTritonModelJobOutputObject.md)
Create an in-memory object for TritonModelJobOutput.

### [New-AzMLWorkspaceUriFileJobInputObject](New-AzMLWorkspaceUriFileJobInputObject.md)
Create an in-memory object for UriFileJobInput.

### [New-AzMLWorkspaceUriFileJobOutputObject](New-AzMLWorkspaceUriFileJobOutputObject.md)
Create an in-memory object for UriFileJobOutput.

### [New-AzMLWorkspaceUriFolderJobInputObject](New-AzMLWorkspaceUriFolderJobInputObject.md)
Create an in-memory object for UriFolderJobInput.

### [New-AzMLWorkspaceUriFolderJobOutputObject](New-AzMLWorkspaceUriFolderJobOutputObject.md)
Create an in-memory object for UriFolderJobOutput.

### [New-AzMLWorkspaceVirtualMachineObject](New-AzMLWorkspaceVirtualMachineObject.md)
Create an in-memory object for VirtualMachine.

### [Remove-AzMlWorkspace](Remove-AzMlWorkspace.md)
Deletes a machine learning workspace.

### [Remove-AzMlWorkspaceBatchDeployment](Remove-AzMlWorkspaceBatchDeployment.md)
Delete Batch Inference deployment (asynchronous).

### [Remove-AzMlWorkspaceBatchEndpoint](Remove-AzMlWorkspaceBatchEndpoint.md)
Delete Batch Inference Endpoint (asynchronous).

### [Remove-AzMlWorkspaceCodeContainer](Remove-AzMlWorkspaceCodeContainer.md)
Delete container.

### [Remove-AzMlWorkspaceCodeVersion](Remove-AzMlWorkspaceCodeVersion.md)
Delete version.

### [Remove-AzMlWorkspaceComponentContainer](Remove-AzMlWorkspaceComponentContainer.md)
Delete container.

### [Remove-AzMlWorkspaceComponentVersion](Remove-AzMlWorkspaceComponentVersion.md)
Delete version.

### [Remove-AzMlWorkspaceCompute](Remove-AzMlWorkspaceCompute.md)
Deletes specified Machine Learning compute.

### [Remove-AzMlWorkspaceConnection](Remove-AzMlWorkspaceConnection.md)


### [Remove-AzMlWorkspaceDataContainer](Remove-AzMlWorkspaceDataContainer.md)
Delete container.

### [Remove-AzMlWorkspaceDatastore](Remove-AzMlWorkspaceDatastore.md)
Delete datastore.

### [Remove-AzMlWorkspaceDataVersion](Remove-AzMlWorkspaceDataVersion.md)
Delete version.

### [Remove-AzMlWorkspaceEnvironmentContainer](Remove-AzMlWorkspaceEnvironmentContainer.md)
Delete container.

### [Remove-AzMlWorkspaceEnvironmentVersion](Remove-AzMlWorkspaceEnvironmentVersion.md)
Delete version.

### [Remove-AzMlWorkspaceJob](Remove-AzMlWorkspaceJob.md)
Deletes a Job (asynchronous).

### [Remove-AzMlWorkspaceModelContainer](Remove-AzMlWorkspaceModelContainer.md)
Delete container.

### [Remove-AzMlWorkspaceModelVersion](Remove-AzMlWorkspaceModelVersion.md)
Delete version.

### [Remove-AzMlWorkspaceOnlineDeployment](Remove-AzMlWorkspaceOnlineDeployment.md)
Delete Inference Endpoint Deployment (asynchronous).

### [Remove-AzMlWorkspaceOnlineEndpoint](Remove-AzMlWorkspaceOnlineEndpoint.md)
Delete Online Endpoint (asynchronous).

### [Restart-AzMlWorkspaceCompute](Restart-AzMlWorkspaceCompute.md)
Posts a restart action to a compute instance

### [Start-AzMlWorkspaceCompute](Start-AzMlWorkspaceCompute.md)
Posts a start action to a compute instance

### [Stop-AzMlWorkspaceCompute](Stop-AzMlWorkspaceCompute.md)
Posts a stop action to a compute instance

### [Stop-AzMlWorkspaceJob](Stop-AzMlWorkspaceJob.md)
Cancels a Job (asynchronous).

### [Sync-AzMlWorkspaceKey](Sync-AzMlWorkspaceKey.md)
Resync all the keys associated with this workspace.
This includes keys for the storage account, app insights and password for container registry

### [Update-AzMLServiceQuota](Update-AzMLServiceQuota.md)
Update quota for each VM family in workspace.

### [Update-AzMlWorkspace](Update-AzMlWorkspace.md)
Updates a machine learning workspace with the specified parameters.

### [Update-AzMlWorkspaceBatchDeployment](Update-AzMlWorkspaceBatchDeployment.md)
Update a batch inference deployment (asynchronous).

### [Update-AzMlWorkspaceBatchEndpoint](Update-AzMlWorkspaceBatchEndpoint.md)
Update a batch inference endpoint (asynchronous).

### [Update-AzMlWorkspaceCompute](Update-AzMlWorkspaceCompute.md)
Updates properties of a compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.

### [Update-AzMlWorkspaceOnlineDeployment](Update-AzMlWorkspaceOnlineDeployment.md)
Update Online Deployment (asynchronous).

### [Update-AzMlWorkspaceOnlineEndpoint](Update-AzMlWorkspaceOnlineEndpoint.md)
Update Online Endpoint (asynchronous).

