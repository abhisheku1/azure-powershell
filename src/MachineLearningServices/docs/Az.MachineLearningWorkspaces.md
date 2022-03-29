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
Get the detail of a workspace connection.

### [Get-AzMlWorkspaceDatasetContainer](Get-AzMlWorkspaceDatasetContainer.md)
Get container.

### [Get-AzMlWorkspaceDatasetVersion](Get-AzMlWorkspaceDatasetVersion.md)
Get version.

### [Get-AzMlWorkspaceDatastore](Get-AzMlWorkspaceDatastore.md)
Get datastore.

### [Get-AzMlWorkspaceDatastoreSecret](Get-AzMlWorkspaceDatastoreSecret.md)
Get datastore secrets.

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

### [Invoke-AzMlWorkspaceDiagnoseWorkspace](Invoke-AzMlWorkspaceDiagnoseWorkspace.md)
Diagnose workspace setup issue.

### [Invoke-AzMlWorkspacePrepareWorkspaceNotebook](Invoke-AzMlWorkspacePrepareWorkspaceNotebook.md)
Prepare a notebook.

### [Invoke-AzMlWorkspaceResyncWorkspaceKey](Invoke-AzMlWorkspaceResyncWorkspaceKey.md)
Resync all the keys associated with this workspace.
This includes keys for the storage account, app insights and password for container registry

### [New-AzMlWorkspace](New-AzMlWorkspace.md)
Creates or updates a workspace with the specified parameters.

### [New-AzMlWorkspaceBatchDeployment](New-AzMlWorkspaceBatchDeployment.md)
Creates/updates a batch inference deployment (asynchronous).

### [New-AzMlWorkspaceBatchEndpoint](New-AzMlWorkspaceBatchEndpoint.md)
Creates a batch inference endpoint (asynchronous).

### [New-AzMlWorkspaceCodeContainer](New-AzMlWorkspaceCodeContainer.md)
Create or update container.

### [New-AzMlWorkspaceCodeVersion](New-AzMlWorkspaceCodeVersion.md)
Create or update version.

### [New-AzMlWorkspaceComponentContainer](New-AzMlWorkspaceComponentContainer.md)
Create or update container.

### [New-AzMlWorkspaceComponentVersion](New-AzMlWorkspaceComponentVersion.md)
Create or update version.

### [New-AzMlWorkspaceCompute](New-AzMlWorkspaceCompute.md)
Creates or updates compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.
If your intent is to create a new compute, do a GET first to verify that it does not exist yet.

### [New-AzMlWorkspaceConnection](New-AzMlWorkspaceConnection.md)
Add a new workspace connection.

### [New-AzMlWorkspaceDatasetContainer](New-AzMlWorkspaceDatasetContainer.md)
Create or update container.

### [New-AzMlWorkspaceDatasetVersion](New-AzMlWorkspaceDatasetVersion.md)
Create or update version.

### [New-AzMlWorkspaceDatastore](New-AzMlWorkspaceDatastore.md)
Create or update datastore.

### [New-AzMlWorkspaceEnvironmentContainer](New-AzMlWorkspaceEnvironmentContainer.md)
Create or update container.

### [New-AzMlWorkspaceEnvironmentVersion](New-AzMlWorkspaceEnvironmentVersion.md)
Creates or updates an EnvironmentVersion.

### [New-AzMlWorkspaceJob](New-AzMlWorkspaceJob.md)
Creates and executes a Job.

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
Delete a workspace connection.

### [Remove-AzMlWorkspaceDatasetContainer](Remove-AzMlWorkspaceDatasetContainer.md)
Delete container.

### [Remove-AzMlWorkspaceDatasetVersion](Remove-AzMlWorkspaceDatasetVersion.md)
Delete version.

### [Remove-AzMlWorkspaceDatastore](Remove-AzMlWorkspaceDatastore.md)
Delete datastore.

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

### [Set-AzMlWorkspace](Set-AzMlWorkspace.md)
Creates or updates a workspace with the specified parameters.

### [Set-AzMlWorkspaceBatchDeployment](Set-AzMlWorkspaceBatchDeployment.md)
Creates/updates a batch inference deployment (asynchronous).

### [Set-AzMlWorkspaceBatchEndpoint](Set-AzMlWorkspaceBatchEndpoint.md)
Creates a batch inference endpoint (asynchronous).

### [Set-AzMlWorkspaceCodeContainer](Set-AzMlWorkspaceCodeContainer.md)
Create or update container.

### [Set-AzMlWorkspaceCodeVersion](Set-AzMlWorkspaceCodeVersion.md)
Create or update version.

### [Set-AzMlWorkspaceComponentContainer](Set-AzMlWorkspaceComponentContainer.md)
Create or update container.

### [Set-AzMlWorkspaceComponentVersion](Set-AzMlWorkspaceComponentVersion.md)
Create or update version.

### [Set-AzMlWorkspaceCompute](Set-AzMlWorkspaceCompute.md)
Creates or updates compute.
This call will overwrite a compute if it exists.
This is a nonrecoverable operation.
If your intent is to create a new compute, do a GET first to verify that it does not exist yet.

### [Set-AzMlWorkspaceDatasetContainer](Set-AzMlWorkspaceDatasetContainer.md)
Create or update container.

### [Set-AzMlWorkspaceDatasetVersion](Set-AzMlWorkspaceDatasetVersion.md)
Create or update version.

### [Set-AzMlWorkspaceDatastore](Set-AzMlWorkspaceDatastore.md)
Create or update datastore.

### [Set-AzMlWorkspaceEnvironmentContainer](Set-AzMlWorkspaceEnvironmentContainer.md)
Create or update container.

### [Set-AzMlWorkspaceEnvironmentVersion](Set-AzMlWorkspaceEnvironmentVersion.md)
Creates or updates an EnvironmentVersion.

### [Set-AzMlWorkspaceJob](Set-AzMlWorkspaceJob.md)
Creates and executes a Job.

### [Set-AzMlWorkspaceModelContainer](Set-AzMlWorkspaceModelContainer.md)
Create or update container.

### [Set-AzMlWorkspaceModelVersion](Set-AzMlWorkspaceModelVersion.md)
Create or update version.

### [Set-AzMlWorkspaceOnlineDeployment](Set-AzMlWorkspaceOnlineDeployment.md)
Create or update Inference Endpoint Deployment (asynchronous).

### [Set-AzMlWorkspaceOnlineEndpoint](Set-AzMlWorkspaceOnlineEndpoint.md)
Create or update Online Endpoint (asynchronous).

### [Start-AzMlWorkspaceCompute](Start-AzMlWorkspaceCompute.md)
Posts a start action to a compute instance

### [Stop-AzMlWorkspaceCompute](Stop-AzMlWorkspaceCompute.md)
Posts a stop action to a compute instance

### [Stop-AzMlWorkspaceJob](Stop-AzMlWorkspaceJob.md)
Cancels a Job.

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

