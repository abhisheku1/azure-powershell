### Example 1: Delete model version
```powershell
Remove-AzMlWorkspaceModelVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01 -Version 1
```

```output
```

Delete model version

### Example 2: Delete model version by pipeline
```powershell
Get-AzMlWorkspaceModelVersion  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name modelcontainerpwsh01 -Version 1 | Remove-AzMlWorkspaceModelVersion 
```

```output
```

Delete model version by pipeline

