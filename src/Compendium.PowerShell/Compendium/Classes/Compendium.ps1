[NoRunspaceAffinity()]
class Compendium {
    [string] $Name
    hidden [hashtable[]] $Tags

    Compendium([string] $Name, [hashtable] $Tags) {
        $this.Init(@{
            Name = $Name
            Tags = $Tags
        })
    }

    hidden [void] Init([hashtable] $Properties) {
        foreach($Property in $Properties.Keys) {
            $this.$Property = $Properties.$Property
        }
    }

    [object] GetTag([string] $key) {
        Write-Verbose -Message "Called `$this.Tag($key)"

        return $this.Tags.$key
    }
}
