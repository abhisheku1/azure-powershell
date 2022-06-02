### Example 1: Lists all the keys associated with this workspace.This includes keys for the storage account, app insights and password for container regist
```powershell
Get-AzMlWorkspaceKey  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01
```

```output
AppInsightsInstrumentationKey        UserStorageKey                                                                           UserStorageResourceId
-----------------------------        --------------                                                                           ---------------------
xxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

 Lists all the keys associated with this workspace.This includes keys for the storage account, app insights and password for container regist

