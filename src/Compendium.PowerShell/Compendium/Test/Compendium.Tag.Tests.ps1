BeforeAll {
    Import-Module -Name '../Compendium'
    $script:tagKey = 'powershell'
    $script:tagValue = 'module'
    $script:compendium = [Compendium]::new('Book1', @{"$tagKey" = $tagValue})
}

Describe 'Compendium methods' {
    Context "Tag" {
        It "Given tag value powershell, it returns the value of module" {
            $result = $compendium.Tag($tagKey)
            $result | Should -Be $tagValue
        }
    }
}

AfterAll {
    Remove-Module -Name 'Compendium'
}
