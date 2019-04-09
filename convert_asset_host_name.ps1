foreach ($f in (Get-ChildItem ".\source\_posts\wp*.md")) {
    $deprecated_url = "http://semprathlon.net/blog/blog/uploads"
    $new_url = "__ASSETS_HOST_NAME__"
    if (Get-Content $f | Where-Object { $_ -match $deprecated_url }) { 
        (Get-Content $f) | ForEach-Object { $_ -replace $deprecated_url, $new_url } | Set-Content $f
    }
}