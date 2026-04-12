Write-Host "=== NNekoTriggers Solution Repair Tool ===" -ForegroundColor Cyan

# 1. Verify correct directory
$expected = "NNekoTriggers"
$current  = Split-Path -Leaf (Get-Location)

if ($current -ne $expected) {
    Write-Host "ERROR: You are in the wrong directory." -ForegroundColor Red
    Write-Host "Current: $current"
    Write-Host "Expected: $expected"
    exit 1
}

Write-Host "Directory OK: $current" -ForegroundColor Green

# 2. Delete any existing .sln files
$sln = "NNekoTriggers.sln"
if (Test-Path $sln) {
    Write-Host "Deleting old solution file..." -ForegroundColor Yellow
    Remove-Item $sln -Force
}

# 3. Recreate solution
Write-Host "Creating new solution..." -ForegroundColor Cyan
dotnet new sln -n NNekoTriggers

# 4. Add project
if (-not (Test-Path "NNekoTriggers.csproj")) {
    Write-Host "ERROR: NNekoTriggers.csproj not found!" -ForegroundColor Red
    exit 1
}

Write-Host "Adding project to solution..." -ForegroundColor Cyan
dotnet sln add NNekoTriggers.csproj

# 5. Validate solution
Write-Host "Validating solution..." -ForegroundColor Cyan
$slnContent = Get-Content $sln

if ($slnContent -notmatch "Project") {
    Write-Host "ERROR: Solution still contains no project entries!" -ForegroundColor Red
    exit 1
}

Write-Host "Solution looks valid." -ForegroundColor Green

# 6. Build
Write-Host "Building project..." -ForegroundColor Cyan
dotnet build

Write-Host "=== Repair Complete ===" -ForegroundColor Green
