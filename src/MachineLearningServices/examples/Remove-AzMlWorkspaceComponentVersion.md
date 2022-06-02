### Example 1: Delete component version
```powershell
Remove-AzMlWorkspaceComponentVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name componentpwsh01 -Version 1
```

```output
```

 Delete component version

### Example 2:  Delete component version by pipeline
```powershell
Get-AzMlWorkspaceComponentVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name componentpwsh01 -Version 1 | Remove-AzMlWorkspaceComponentVersion
```

```output
```

 Delete component version by pipeline

