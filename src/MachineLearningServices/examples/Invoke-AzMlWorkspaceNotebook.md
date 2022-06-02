### Example 1: Prepare a notebook
```powershell
Invoke-AzMlWorkspaceNotebook -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
Fqdn ResourceId
---- ----------
```

Prepare a notebook

### Example 2: Prepare a notebook by pipeline
```powershell
$workspace = Get-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-cli01 | Invoke-AzMlWorkspaceNotebook
```

```output
Fqdn ResourceId
---- ----------
```

Prepare a notebook by pipeline

