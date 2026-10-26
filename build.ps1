# Wraps app.html into a standalone index.html and draws the app icons.
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$out = Join-Path $root 'athletic-body-project'
New-Item -ItemType Directory -Force $out | Out-Null

$app = [IO.File]::ReadAllText((Join-Path $root 'app.html'), [Text.Encoding]::UTF8)
$head = @'
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="theme-color" content="#121413">
<meta name="mobile-web-app-capable" content="yes">
<link rel="manifest" href="manifest.webmanifest">
<link rel="icon" href="icon-192.png">
<link rel="apple-touch-icon" href="icon-192.png">
<style>:root{padding-top:env(safe-area-inset-top,0px)}</style>
</head>
<body>
'@
$tail = @'
<script>if('serviceWorker' in navigator && location.protocol !== 'file:'){navigator.serviceWorker.register('sw.js').catch(function(){});}</script>
</body>
</html>
'@
[IO.File]::WriteAllText((Join-Path $out 'index.html'), $head + $app + $tail, (New-Object Text.UTF8Encoding $false))

Add-Type -AssemblyName System.Drawing
foreach ($s in 192, 512) {
  $bmp = New-Object Drawing.Bitmap $s, $s
  $g = [Drawing.Graphics]::FromImage($bmp)
  $g.SmoothingMode = 'AntiAlias'
  $g.Clear([Drawing.Color]::FromArgb(18, 20, 19))
  $pen = New-Object Drawing.Pen ([Drawing.Color]::FromArgb(98, 179, 133)), ($s * 0.075)
  $pen.StartCap = 'Round'; $pen.EndCap = 'Round'; $pen.LineJoin = 'Round'
  $k = $s / 24.0
  $pts = @(@(4, 17), @(9.5, 7), @(13.5, 14), @(15.5, 10.5), @(20, 17)) | ForEach-Object {
    New-Object Drawing.PointF ([single](($_[0] - 12) * 0.62 * $k + $s / 2)), ([single](($_[1] - 12) * 0.62 * $k + $s / 2))
  }
  $g.DrawLines($pen, [Drawing.PointF[]]$pts)
  $bmp.Save((Join-Path $out "icon-$s.png"), [Drawing.Imaging.ImageFormat]::Png)
  $g.Dispose(); $bmp.Dispose()
}
Get-ChildItem $out | Select-Object Name, Length
