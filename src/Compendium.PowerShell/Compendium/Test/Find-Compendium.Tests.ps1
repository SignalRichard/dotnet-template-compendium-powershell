BeforeAll {
    Import-Module -Name '../Compendium'

    $script:nameToFind = 'Book1'
    $script:compendia = @(
        [Compendium]::new($nameToFind, @('Book one.'))
        [Compendium]::new('Book2', @('Book two.'))
    )
}

Describe 'Find-Compendium' {
    Context "Book1" {
        It "Given the name Book1, it finds the Compendium" {
            $result = $compendia | Find-Compendium -Name $nameToFind
            $result.Count | Should -Be 1
        }
    }
}

AfterAll {
    Remove-Module -Name 'Compendium'
}
