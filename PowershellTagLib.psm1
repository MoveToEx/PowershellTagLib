Function Get-Tag([String]$FileName) {
    Return [TagLib.File]::Create($FileName).Tag
}

Function Get-Title([String]$FileName) {
    Return (Get-Tag($FileName)).Title
}

Function Get-Artist([String]$FileName) {
    Return (Get-Tag($FileName)).Performers
}

Function Get-Album([String]$FileName) {
    Return (Get-Tag($FileName)).Album
}

Function Set-Title([String]$FileName, [String]$Title) {
    $Meta = [TagLib.File]::Create($FileName)
    $Meta.Tag.Title = $Title
    $Meta.Save()
}

Function Set-Artist([String]$FileName, [String[]]$Artist) {
    $Meta = [TagLib.File]::Create($FileName)
    $Meta.Tag.AlbumArtists = $Meta.Tag.Performers = $Artist
    $Meta.Save()
}

Function Set-Album([String]$FileName, [String]$Album) {
    $Meta = [TagLib.File]::Create($FileName)
    $Meta.Tag.Album = $Album
    $Meta.Save()
}