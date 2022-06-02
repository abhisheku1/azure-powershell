### Example 1: Deletes a machine learning workspace
```powershell
Remove-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01 -Tag @{'key1' = 'value2'}
```

```output
```

Deletes a machine learning workspace

### Example 2: Deletes a machine learning workspace by pipeline
```powershell
Get-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-test01 | Remove-AzMlWorkspace -Tag @{'key1' = 'value2'}
```

```output
```

Deletes a machine learning workspace by pipeline