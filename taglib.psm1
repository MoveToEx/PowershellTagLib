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

