if(($null -eq $TestName) -or ($TestName -contains 'Get-AzMlWorkspaceJob'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzMlWorkspaceJob.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Get-AzMlWorkspaceJob' {
    It 'List' {
        { Get-AzMlWorkspaceJob  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 } | Should -Not -Throw
    }

    It 'Get' {
        { Get-AzMlWorkspaceJob  -ResourceGroupName ml-rg-test -WorkspaceName mlworkspace-cli01 -Name willing_vinegar_mwjs1dyft0 } | Should -Not -Throw
    }
}
