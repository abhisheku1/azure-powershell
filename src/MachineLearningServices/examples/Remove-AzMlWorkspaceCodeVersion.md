### Example 1: Delete Code version
```powershell
Remove-AzMlWorkspaceCodeVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name 'test01' -Version 1
```

```output
```

Delete Code version

### Example 2: Delete Code version by pipeline
```powershell
Get-AzMlWorkspaceCodeVersion -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-portal01 -Name 'test01' -Version 1 | Remove-AzMlWorkspaceCodeVersion
```

```output
```

Delete Code version by pipeline

