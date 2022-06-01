### Example 1: {{ Add title here }}
```powershell
Invoke-AzMlWorkspaceNotebook -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
Fqdn ResourceId
---- ----------
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
$workspace = Get-AzMlWorkspace -ResourceGroupName ml-rg-test -Name mlworkspace-cli01
Invoke-AzMlWorkspaceNotebook -InputObject $workspace
```

```output
{{ Add output here }}
```

{{ Add description here }}

