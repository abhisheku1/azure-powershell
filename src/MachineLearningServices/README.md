<!-- region Generated -->
# Az.MachineLearningWorkspaces
This directory contains the PowerShell module for the MachineLearningWorkspaces service.

---
## Status
[![Az.MachineLearningWorkspaces](https://img.shields.io/powershellgallery/v/Az.MachineLearningWorkspaces.svg?style=flat-square&label=Az.MachineLearningWorkspaces "Az.MachineLearningWorkspaces")](https://www.powershellgallery.com/packages/Az.MachineLearningWorkspaces/)

## Info
- Modifiable: yes
- Generated: all
- Committed: yes
- Packaged: yes

---
## Detail
This module was primarily generated via [AutoRest](https://github.com/Azure/autorest) using the [PowerShell](https://github.com/Azure/autorest.powershell) extension.

## Module Requirements
- [Az.Accounts module](https://www.powershellgallery.com/packages/Az.Accounts/), version 2.7.5 or greater

## Authentication
AutoRest does not generate authentication code for the module. Authentication is handled via Az.Accounts by altering the HTTP payload before it is sent.

## Development
For information on how to develop for `Az.MachineLearningWorkspaces`, see [how-to.md](how-to.md).
<!-- endregion -->

### AutoRest Configuration
> see https://aka.ms/autorest

``` yaml
# branch: 476564a1aa6ddb38ec681c9f89d42f00c1becd25
require:
  - $(this-folder)/../readme.azure.noprofile.md
input-file:
  - https://github.com/erjms/azure-rest-api-specs/blob/dev-machinelearning-Microsoft.MachineLearning-2022-05-01/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2022-05-01/machineLearningServices.json
  - https://github.com/erjms/azure-rest-api-specs/blob/dev-machinelearning-Microsoft.MachineLearning-2022-05-01/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2022-05-01/mfe.json
  - https://github.com/erjms/azure-rest-api-specs/blob/dev-machinelearning-Microsoft.MachineLearning-2022-05-01/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2022-05-01/workspaceFeatures.json

subject-prefix: 'MLWorkspace'
inlining-threshold: 200
resourcegroup-append: true
nested-object-to-string: true
identity-correction-for-post: true

directive:
  # Fix the parameter 'Name' has multiple parameter types [String, String[]] defined, which is not supported.
  - where:
      verb: Get
      subject: Datastore
      variant: ^List$
      parameter-name: Name
    set:
      parameter-name: SearchName

  # All root resources except workspace will use AzMLService as noun prefix.
  - where:
      subject: Usage
    set:
      subject-prefix: MLService

  - where:
      subject: Quota
    set:
      subject-prefix: MLService

  - where:
      subject: VirtualMachineSize
    set:
      subject-prefix: MLService
      subject: VMSize

  - where:
      verb: Invoke
      subject: ResyncWorkspaceKey
    set:
      verb: Sync
      subject: Key

  - where:
      subject: DiagnoseWorkspace
    set:
      subject: Diagnose
      
  - where:
      subject: PrepareWorkspaceNotebook
    set:
      subject: Notebook

  # Remove private cmdlets. it been supported in the Az.Network.
  - where:
      subject: PrivateEndpointConnection|PrivateLinkResource
    remove: true

  - where:
      verb: Set
      subject: BatchDeployment|BatchEndpoint|OnlineDeployment|OnlineEndpoint|Compute
    remove: true

  # Rmove unnecessary variant of the environment
  - where:
      verb: New
      subject: EnvironmentVersion|Connection
      variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
    remove: true
    
  - where:
      verb: Update
      variant: ^Update$|^UpdateViaIdentity$
    remove: true
  # # Unsupport
  # - where:
  #     verb: Get
  #     subject: CodeContainer
  #   remove: true

  # # List unsupport
  # - where:
  #     verb: Get
  #     subject: CodeVersion
  #     variant: ^List$
  #   remove: true

  - where:
      verb: Invoke
      subject: Diagnose
      variant: ^Diagnose$|^DiagnoseViaIdentity$
    remove: true

  - where:
      verb: Invoke
      subject: Diagnose
      parameter-name: Value(.*)
    set:
      parameter-name: $1  
  - where:
      verb: Invoke
      subject: Diagnose
      parameter-name: WorkspaceName
    set:
      parameter-name: Workspace 
  - where:
      verb: Invoke
      subject: Diagnose
      parameter-name: ApplicationInsight
    set:
      parameter-name: ApplicationInsightId 

  - where:
      verb: Invoke
      subject: Diagnose
      parameter-name: ContainerRegistry
    set:
      parameter-name: ContainerRegistryId

  - where:
      verb: Invoke
      subject: Diagnose
      parameter-name: KeyVault
    set:
      parameter-name: KeyVaultId 

  - where:
      verb: Invoke
      subject: Diagnose
      parameter-name: KeyVault
    set:
      parameter-name: StorageAccountId 

  # Create Datastore
  - where:
      verb: New
      subject: Datastore
      variant: ^CreateViaIdentity$|^Create$|^CreateViaIdentityExpanded$
    remove: true
  - where:
      verb: New
      subject: Datastore
      parameter-name: Property
    set:
      parameter-name: Datastore
  # Costomization compute cmdlet 
  - where:
      verb: New
      subject: Compute
      variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
    remove: true

  - where:
      verb: New
      subject: Compute
      parameter-name: Property
    set:
      parameter-name: Compute
  # workspace, Cannot specified subject.
  # - where:
  #     verb: New
  #     subject: $
  #     variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
  #   remove: true

  # - where:
  #     verb: New
  #     subject: Compute
  #   hide: true

#   - where:
#       verb: New
#       subject: Job
#       variant: ^CreateExpanded$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
#     remove: true

#   - where:
#       verb: New
#       subject: Job
#       parameter-name: Body
#     set:
#       parameter-name: Job

#   # - where:
#   #     verb: New
#   #     subject: OnlineDeployment
#   #     variant: ^CreateExpanded$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
#   #   remove: true

#   # - where:
#   #     verb: New
#   #     subject: OnlineDeployment
#   #     parameter-name: Body
#   #   set:
#   #     parameter-name: Deployment

#   # - where:
#   #     verb: New
#   #     subject: BatchDeployment|BatchEndpoint|CodeContainer|CodeVersion|ComponentContainer|ComponentVersion|Connection|Container|DatasetVersion|EnvironmentContainer|EnvironmentVersion|ModelContainer|ModelVersion|OnlineDeployment|OnlineEndpoint|OnlineEndpointKey
#   #     variant: ^Create$|^CreateViaIdentity$|^CreateViaIdentityExpanded$
#   #   remove: true

  # cutomization workspace cmdlet, rename parameters
  - where:
      verb: New|Update
      subject: ""
      parameter-name: ApplicationInsight
    set:
      parameter-name: ApplicationInsightId

  - where:
      verb: New|Update
      subject: ""
      parameter-name: ContainerRegistry
    set:
      parameter-name: ContainerRegistryId

  - where:
      verb: New|Update
      subject: ""
      parameter-name: KeyVault
    set:
      parameter-name: KeyVaultId

  - where:
      verb: New|Update
      subject: ""
      parameter-name: KeyVaultPropertyIdentityClientId
    set:
      parameter-name: KeyVaultIdentityClientId

  - where:
      verb: New|Update
      subject: ""
      parameter-name: KeyVaultPropertyKeyIdentifier
    set:
      parameter-name: KeyVaultKeyIdentifier

  - where:
      verb: New|Update
      subject: ""
      parameter-name: KeyVaultPropertyKeyVaultArmId
    set:
      parameter-name: KeyVaultArmId

  - where:
      verb: New|Update
      subject: ""
      parameter-name: PropertiesEncryptionIdentityUserAssignedIdentity
    set:
      parameter-name: EncryptionUserAssignedIdentity

  - where:
      verb: New|Update
      subject: ""
      parameter-name: IdentityUserAssignedIdentity
    set:
      parameter-name: IdentityUserAssigned

  - where:
      verb: New|Update
      subject: ""
      parameter-name: StorageAccount
    set:
      parameter-name: StorageAccountId
#   # --------------------------
  - where:
      subject: ComputeKey|ComputeNode
      parameter-name: ComputeName
    set:
      parameter-name: Name
  - where:
      subject: Compute
      parameter-name: ScaleSetting(.*)
    set:
      parameter-name: $1

  - where:
      subject: Connection
      parameter-name: ConnectionName
    set:
      parameter-name: Name

  - where:
      subject: Job
      parameter-name: Id
    set:
      parameter-name: Name

  - where:
      subject: OnlineDeployment|OnlineDeploymentLog|DeploymentSku|BatchDeployment
      parameter-name: DeploymentName
    set:
      parameter-name: Name

  - where:
      subject: OnlineDeployment|BatchDeployment
      parameter-name: CodeConfigurationCodeId
    set:
      parameter-name: CodeId

  - where:
      subject: OnlineDeployment|BatchDeployment
      parameter-name: CodeConfigurationScoringScript
    set:
      parameter-name: CodeScoringScript

  - where:
      subject: OnlineDeployment
      parameter-name: RequestSettingMaxConcurrentRequestsPerInstance
    set:
      parameter-name: RequestMaxConcurrentPerInstance

  - where:
      subject: OnlineDeployment
      parameter-name: RequestSettingMaxQueueWait
    set:
      parameter-name: RequestMaxQueueWait

  - where:
      subject: OnlineDeployment
      parameter-name: RequestSettingRequestTimeout
    set:
      parameter-name: RequestTimeout

  - where:
      subject: OnlineDeployment
      parameter-name: ScaleSettingScaleType
    set:
      parameter-name: ScaleType

  - where:
      subject: BatchDeployment
      parameter-name: RetrySettingMaxRetry
    set:
      parameter-name: RetryMax
  - where:
      subject: BatchDeployment
      parameter-name: RetrySettingTimeout
    set:
      parameter-name: RetryTimeout
  - where:
      subject: BatchDeployment
      parameter-name: Compute
    set:
      parameter-name: ComputeId

  - where:
      subject: OnlineEndpoint|OnlineEndpointKey|OnlineEndpointToken|BatchEndpoint
      parameter-name: EndpointName
    set:
      parameter-name: Name
  
  - where:
      subject: BatchEndpoint
      parameter-name: KeyPrimaryKey
    set:
      parameter-name: PrimaryKey

  - where:
      subject: BatchEndpoint
      parameter-name: KeySecondaryKey
    set:
      parameter-name: SecondaryKey

  - where:
      subject: Key
      parameter-name: WorkspaceName
    set:
      parameter-name: Name

  - no-inline:
# Datastore
    - Datastore
    - DatastoreCredentials
    - AccountKeyDatastoreCredentials
    - CertificateDatastoreCredentials
    - NoneDatastoreCredentials
    - SasDatastoreCredentials
    - ServicePrincipalDatastoreCredentials
# Compute
    - Compute
    
  - model-cmdlet:
# Compute type: 'AKS', 'Kubernetes', 'AmlCompute', 'ComputeInstance','DataFactory', 'VirtualMachine', 'HDInsight', 'Databricks', 'DataLakeAnalytics', 'SynapseSpark'
    # - AmlCompute 
    # # --> New-AzMLWorkspaceAmlComputeObject
    # - ComputeInstance 
    # #--> New-AzMLWorkspaceComputeInstanceObject
    # - Aks 
    ##--> New-AzMLWorkspaceAksObject
    - Kubernetes 
    #--> New-AzMLWorkspaceKubernetesObject
    - VirtualMachine 
    #--> New-AzMLWorkspaceVirtualMachineObject
    - HDInsight 
    #--> New-AzMLWorkspaceHDInsightObject
    - DataFactory 
    #--> New-AzMLWorkspaceDataFactoryObject
    - Databricks 
    # --> New-AzMLWorkspaceDatabricksObject
    - DataLakeAnalytics 
    # --> New-AzMLWorkspaceDataLakeAnalyticsObject
    - SynapseSpark 
    # --> New-AzMLWorkspaceSynapseSparkObject
    - ComputeStartStopSchedule
# Datastore
    ## Datastore Type
    # - AzureBlobDatastore --> New-AzMLWorkspaceDatastoreBlobObject
    # - AzureDataLakeGen1Datastore --> New-AzMLWorkspaceDatastoreDataLakeGen1Object
    # - AzureDataLakeGen2Datastore --> New-AzMLWorkspaceDatastoreDataLakeGen2Object
    # - AzureFileDatastore --> New-AzMLWorkspaceDatastoreFileObject
    ## Credentials Type: 'AccountKey', 'Certificate', 'None', 'Sas', 'ServicePrincipal'
    # - AccountKeyDatastoreCredentials --> New-AzMLWorkspaceDatastoreKeyCredentialObject
    # - CertificateDatastoreCredentials --> New-AzMLWorkspaceDatastoreCredentialsObject
    # - NoneDatastoreCredentials --> New-AzMLWorkspaceDatastoreNoneCredentialsObject
    # - SasDatastoreCredentials --> New-AzMLWorkspaceDatastoreSasCredentialsObject
    # - ServicePrincipalDatastoreCredentials --> New-AzMLWorkspaceDatastoreServicePrincipalCredentialsObject
# Job type
    - CommandJob
    - PipelineJob
    - SweepJob
```
