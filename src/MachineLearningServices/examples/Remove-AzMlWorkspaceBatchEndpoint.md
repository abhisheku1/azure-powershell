### Example 1: Delete Batch Inference Endpoint (asynchronous)
```powershell
Remove-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batchpwsh01-key
```

```output
```

Delete Batch Inference Endpoint (asynchronous)

### Example 2: Delete Batch Inference Endpoint (asynchronous) by pipeline
```powershell
Get-AzMlWorkspaceBatchEndpoint -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name batchpwsh01-key | Remove-AzMlWorkspaceBatchEndpoint
```

```output
```

Delete Batch Inference Endpoint (asynchronous) by pipeline

