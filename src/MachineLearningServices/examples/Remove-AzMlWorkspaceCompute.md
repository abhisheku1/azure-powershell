### Example 1: Deletes specified Machine Learning compute
```powershell
Remove-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02
```

```output
```

Deletes specified Machine Learning compute

### Example 2: Deletes specified Machine Learning compute by pipeline
```powershell
Get-AzMlWorkspaceCompute -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -Name aml02 | Remove-AzMlWorkspaceCompute
```

```output
```

Deletes specified Machine Learning compute by pipeline

