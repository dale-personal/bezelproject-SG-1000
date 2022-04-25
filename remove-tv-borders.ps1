$files = Get-ChildItem -File -Filter *.png  -Path retroarch\overlay\GameBezels\SG-1000
for ($i=0; $i -lt $files.Count; $i++) {
    Write-Output $files[$i].FullName
    magick $files[$i].FullName -strokewidth 0 -fill black -draw "rectangle 121,0 1807,1080" -region "1687x1080+121+0" -transparent black $files[$i].FullName
}