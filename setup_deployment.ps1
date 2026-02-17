# setup_deployment.ps1
$source = "C:\Users\patil\Desktop\Smart_Hospital_App"
$dest = "C:\Users\patil\Desktop\Railway_New"

Write-Host "Step 1: Creating new folder at $dest..."
New-Item -ItemType Directory -Force -Path $dest | Out-Null

Write-Host "Step 2: Copying files from Smart_Hospital_App..."
# Copy everything except git and cache
Get-ChildItem -Path $source -Exclude ".git",".venv","__pycache__" | Copy-Item -Destination $dest -Recurse -Force

Write-Host "Step 3: Creating Railway configuration files..."

# Procfile
$procfileContent = "web: gunicorn --chdir backend --bind 0.0.0.0:`$PORT server:app"
Set-Content -Path "$dest\Procfile" -Value $procfileContent

# runtime.txt
Set-Content -Path "$dest\runtime.txt" -Value "python-3.11.6"

# requirements.txt
$reqContent = @"
flask
flask-cors
gunicorn
psycopg2-binary
"@
Set-Content -Path "$dest\requirements.txt" -Value $reqContent

Write-Host "`nSUCCESS! The folder '$dest' is ready."
Write-Host "Next Steps:"
Write-Host "1. Open '$dest' in VS Code."
Write-Host "2. Run 'git init'"
Write-Host "3. Run 'git add .'"
Write-Host "4. Run 'git commit -m ""Initial commit""'"
Write-Host "5. Push to GitHub."
