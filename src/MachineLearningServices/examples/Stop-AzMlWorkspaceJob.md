### Example 1: Cancels a Job (asynchronous)
```powershell
Stop-AzMlWorkspaceJob -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name commandJob01
```

```output
```

Cancels a Job (asynchronous)

### Example 2: Cancels a Job (asynchronous) by pipeline
```powershell
Get-AzMlWorkspaceJob -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name commandJob01 | Stop-AzMlWorkspaceJob
```

```output
```

Cancels a Job (asynchronous) by pipeline

