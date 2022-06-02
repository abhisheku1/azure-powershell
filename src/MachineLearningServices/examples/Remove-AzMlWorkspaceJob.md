### Example 1: Deletes a Job (asynchronous)
```powershell
Remove-AzMlWorkspaceJob -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name commandJob01
```

```output
```

Deletes a Job (asynchronous)

### Example 2: Deletes a Job (asynchronous) by pipeline
```powershell
Get-AzMlWorkspaceJob -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name commandJob01 | Remove-AzMlWorkspaceJob
```

```output
```

Deletes a Job (asynchronous) by pipeline

