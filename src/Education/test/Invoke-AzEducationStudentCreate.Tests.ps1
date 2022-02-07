if(($null -eq $TestName) -or ($TestName -contains 'Invoke-AzEducationStudentCreate'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'Invoke-AzEducationStudentCreate.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'Invoke-AzEducationStudentCreate' {
    It 'StudentExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Student' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'StudentViaIdentityExpanded' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'StudentViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
