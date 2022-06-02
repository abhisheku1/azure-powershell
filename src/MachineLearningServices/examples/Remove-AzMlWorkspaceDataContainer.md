### Example 1: Delete data container
```powershell
Remove-AzMlWorkspaceDataContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name datacontainer-pwsh01
```

```output
```

Delete data container

### Example 2: Delete data container by pipeline
```powershell
Get-AzMlWorkspaceDataContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name datacontainer-pwsh01 | Remove-AzMlWorkspaceDataContainer
```

```output
```

Delete data container by pipeline

