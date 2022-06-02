### Example 1: Delete datastore by pipeline
```powershell
Remove-AzMlWorkspaceDatastore -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-demo -Name blobdatastore
```

```output
```

Delete datastore

### Example 2: Delete datastore by pipeline
```powershell
Get-AzMlWorkspaceDatastore -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-demo -Name blobdatastore | Remove-AzMlWorkspaceDatastore
```

```output
```

Delete datastore

