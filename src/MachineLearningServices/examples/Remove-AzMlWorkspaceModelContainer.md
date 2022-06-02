### Example 1: Delete model container
```powershell
Remove-AzMlWorkspaceModelContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01
```

```output
```

Delete model container

### Example 2: Delete model container by pipeline
```powershell
Get-AzMlWorkspaceModelContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01 | Remove-AzMlWorkspaceModelContainer 
```

```output
```

Delete model container by pipeline

