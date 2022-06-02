### Example 1: Delete component container
```powershell
Remove-AzMlWorkspaceComponentContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name component-pwsh01
```

```output
```

Delete component container

### Example 2: Delete component container by pipeline

```powershell
Get-AzMlWorkspaceComponentContainer -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name component-pwsh01 | Remove-AzMlWorkspaceComponentContainer
```

```output
```

Delete component container by pipeline