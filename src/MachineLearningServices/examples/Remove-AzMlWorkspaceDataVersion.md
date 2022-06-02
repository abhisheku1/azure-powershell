### Example 1: Delete data version
```powershell
Remove-AzMlWorkspaceDataVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name iris-data -Version 2
```

```output
```

Delete data version

### Example 2: Delete data version by pipeline
```powershell
Get-AzMlWorkspaceDataVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name iris-data -Version 2 | Remove-AzMlWorkspaceDataVersion
```

```output
```

Delete data version by pipeline

