### Example 1: {{ Add title here }}
```powershell
New-AzMlWorkspaceConnection -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-test01 -ConnectionName test01 -AuthType 'None' -Category 'ContainerRegistry' -Target "www.facebook.com"
```

```output
Name   SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----   ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
test01                                                                                                                                                ml-rg-test
```

{{ Add description here }}

