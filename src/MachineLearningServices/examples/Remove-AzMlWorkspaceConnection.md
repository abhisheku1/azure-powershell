### Example 1: Delete a workspace connection
```powershell
Remove-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -ConnectionName test01
```

```output
```

Delete a workspace connection

### Example 2: Delete a workspace connection by pipeline
```powershell
Get-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -ConnectionName test01 | Remove-AzMlWorkspaceConnection
```

```output
```

Delete a workspace connection by pipeline