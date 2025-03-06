BeforeAll {
    Import-Module -Name (Join-Path -Path $PSScriptRoot -ChildPath '../Compendium')
    $script:tagKey = 'powershell'
    $script:tagValue = 'module'
    $script:compendium = [Compendium]::new('Compendium1', @{"$tagKey" = $tagValue})
}

Describe 'Compendium methods' {
    Context "GetTag" {
        It "Given tag value powershell, it returns the value of module" {
            $result = $compendium.GetTag($tagKey)
            $result | Should -Be $tagValue
        }
    }
}

AfterAll {
    Remove-Module -Name 'Compendium'
}
