### Example 1: Delete Batch Inference deployment (asynchronous)
```powershell
Remove-AzMlWorkspaceBatchDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName batch-pwsh03 -Name nonmlflowdp
```

```output
```

Delete Batch Inference deployment (asynchronous)

### Example 2: Delete Batch Inference deployment (asynchronous) by pipeline
```powershell
Get-AzMlWorkspaceBatchDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName batch-pwsh03 -Name nonmlflowdp | Remove-AzMlWorkspaceBatchDeployment
```

```output
```

Delete Batch Inference deployment (asynchronous) by pipeline

