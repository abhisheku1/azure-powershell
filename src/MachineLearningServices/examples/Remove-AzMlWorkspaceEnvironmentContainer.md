### Example 1: Delete environment container
```powershell
Remove-AzMlWorkspaceEnvironmentContainer  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01
```

```output
```

Delete environment container

### Example 2: Delete environment container by pipeline
```powershell
Get-AzMlWorkspaceEnvironmentContainer  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name pwshenv01 | Remove-AzMlWorkspaceEnvironmentContainer 
```

```output
```

Delete environment container by pipeline