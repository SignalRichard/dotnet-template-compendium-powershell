BeforeAll {
    Import-Module -Name '../Compendium'

    $script:nameToFind = 'Book1'
    $script:collection = @(
        [Compendium]::new($nameToFind, @{powershell = 'module'})
        [Compendium]::new('Book2', @{powershell = 'module'})
    )
}

Describe 'Find-Compendium' {
    Context "Book1" {
        It "Given the name Book1, it finds the Compendium" {
            $result = $collection | Find-Compendium -Name $nameToFind
            $result.Count | Should -Be 1
        }
    }
}

AfterAll {
    Remove-Module -Name 'Compendium'
}
