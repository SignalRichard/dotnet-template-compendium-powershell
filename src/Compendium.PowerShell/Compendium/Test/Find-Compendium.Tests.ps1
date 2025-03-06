BeforeAll {
    Import-Module -Name (Join-Path -Path $PSScriptRoot -ChildPath '../Compendium')

    $script:nameToFind = 'Compendium1'
    $script:collection = @(
        [Compendium]::new($nameToFind, @{powershell = 'module'})
        [Compendium]::new('Compendium2', @{powershell = 'module'})
    )
}

Describe 'Find-Compendium' {
    Context "Compendium1" {
        It "Given the name Compendium1, it finds the Compendium" {
            $result = $collection | Find-Compendium -Name $nameToFind
            $result.Count | Should -Be 1
        }
    }
}

AfterAll {
    Remove-Module -Name 'Compendium'
}
