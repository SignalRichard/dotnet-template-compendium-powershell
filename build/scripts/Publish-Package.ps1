param(
    [string] $PackagePath
)

nuget push $PackagePath -Source $env:NUGETSOURCE
