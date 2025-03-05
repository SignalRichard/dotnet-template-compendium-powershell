BeforeAll {
    Import-Module -Name '../Compendium'
    $script:page2 = 'page 2'
    $script:compendium = [Compendium]::new('Book1', @('page 1', $page2))
}

Describe 'Compendium methods' {
    Context "Read" {
        It "Given page index 2, it returns the contents of page 2" {
            $result = $compendium.Read(1)
            $result | Should -Be $page2
        }
    }
}

AfterAll {
    Remove-Module -Name 'Compendium'
}
