### Example 1: Delete Inference Endpoint Deployment (asynchronous)
```powershell
Remove-AzMlWorkspaceOnlineDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-pwsh01 -Name pwshblue01
```

```output
```

Delete Inference Endpoint Deployment (asynchronous)

### Example 2: Delete Inference Endpoint Deployment (asynchronous) by pipeline
```powershell
Get-AzMlWorkspaceOnlineDeployment -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -EndpointName online-pwsh01 -Name pwshblue01 | Remove-AzMlWorkspaceOnlineDeployment
```

```output
```

Delete Inference Endpoint Deployment (asynchronous) by pipeline

