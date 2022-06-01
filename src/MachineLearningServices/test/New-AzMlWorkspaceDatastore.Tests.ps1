if(($null -eq $TestName) -or ($TestName -contains 'New-AzMlWorkspaceDatastore'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'New-AzMlWorkspaceDatastore.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'New-AzMlWorkspaceDatastore' {
    It 'CreateExpanded' {
        { 
            $accountKey = New-AzMLWorkspaceDatastoreKeyCredentialObject -Key "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
            $datastoreBlob = New-AzMLWorkspaceDatastoreBlobObject -AccountName 'mmstorageeastus' -ContainerName "globaldatasets" -Endpoint "core.windows.net" -Protocol "https" -ServiceDataAccessAuthIdentity 'None' -Credentials $accountKey
            New-AzMlWorkspaceDatastore -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-demo -Name blobdatastore -Datastore $datastoreBlob
            Remove-AzMlWorkspaceDatastore -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-demo -Name blobdatastore
         } | Should -Not -Throw
    }
}
