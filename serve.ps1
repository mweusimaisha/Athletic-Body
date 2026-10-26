# Minimal static server for local testing: http://localhost:8765/
$root = Join-Path $PSScriptRoot 'athletic-body-project'
$l = New-Object Net.HttpListener
$l.Prefixes.Add('http://localhost:8765/')
$l.Start()
Write-Host "Serving $root on http://localhost:8765/"
$types = @{ '.html'='text/html; charset=utf-8'; '.js'='text/javascript'; '.webmanifest'='application/manifest+json'; '.png'='image/png'; '.json'='application/json' }
while ($l.IsListening) {
  $ctx = $l.GetContext()
  $p = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath).TrimStart('/')
  if ($p -eq '') { $p = 'index.html' }
  $f = Join-Path $root $p
  if ((Test-Path $f -PathType Leaf) -and ([IO.Path]::GetFullPath($f).StartsWith($root))) {
    $b = [IO.File]::ReadAllBytes($f)
    $ext = [IO.Path]::GetExtension($f)
    $ctx.Response.ContentType = $(if ($types[$ext]) { $types[$ext] } else { 'application/octet-stream' })
    $ctx.Response.OutputStream.Write($b, 0, $b.Length)
  } else { $ctx.Response.StatusCode = 404 }
  $ctx.Response.Close()
}
