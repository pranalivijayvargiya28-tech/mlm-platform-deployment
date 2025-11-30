# ============================================
# MLM Platform - Setup & Run Script
# ============================================
# Run this script in PowerShell to setup and run the project
# Usage: .\SETUP_AND_RUN.ps1

$ErrorActionPreference = "Stop"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "MLM Platform - Complete Setup & Run" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check if Node.js is installed
Write-Host "[1/8] Checking prerequisites..." -ForegroundColor Yellow
$nodeVersion = node --version 2>$null
if (-not $nodeVersion) {
    Write-Host "ERROR: Node.js is not installed" -ForegroundColor Red
    Write-Host "Download from: https://nodejs.org/" -ForegroundColor Yellow
    exit 1
}
Write-Host "Node.js $nodeVersion found" -ForegroundColor Green

# Frontend Setup
Write-Host ""
Write-Host "[2/8] Installing frontend dependencies..." -ForegroundColor Yellow
if (Test-Path "frontend") {
    Set-Location frontend
    npm install
    Write-Host "Frontend dependencies installed" -ForegroundColor Green
    Set-Location ..
}

# Smart Contracts Setup
Write-Host ""
Write-Host "[3/8] Installing smart contracts dependencies..." -ForegroundColor Yellow
if (Test-Path "smart-contracts") {
    Set-Location smart-contracts
    npm install
    Write-Host "Smart contracts dependencies installed" -ForegroundColor Green
    
    Write-Host "[4/8] Compiling smart contracts..." -ForegroundColor Yellow
    npx hardhat compile
    Write-Host "Smart contracts compiled" -ForegroundColor Green
    
    Set-Location ..
}

# Create .env if not exists
Write-Host ""
Write-Host "[5/8] Setting up environment variables..." -ForegroundColor Yellow
if (-not (Test-Path ".env")) {
    "DB_HOST=localhost`nDB_PORT=5432`nDB_DATABASE=mlm_platform`nDB_USERNAME=postgres`nDB_PASSWORD=your_password`n`nBLOCKCHAIN_RPC_URL=https://bsc-testnet.infura.io/v3/YOUR_KEY`nAPI_PORT=3001`nFRONTEND_PORT=3000" | Out-File -Encoding UTF8 .env
    Write-Host ".env file created (update credentials)" -ForegroundColor Green
}

# Run tests
Write-Host ""
Write-Host "[6/8] Running tests..." -ForegroundColor Yellow
if (Test-Path "smart-contracts") {
    Set-Location smart-contracts
    npx hardhat test
    Write-Host "Tests completed" -ForegroundColor Green
    Set-Location ..
}

Write-Host ""
Write-Host "[7/8] Setup Complete!" -ForegroundColor Green
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "To run the project (in separate terminals):" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Terminal 1 - Frontend:" -ForegroundColor Cyan
Write-Host "cd frontend && npm start" -ForegroundColor White
Write-Host "Runs on: http://localhost:3000" -ForegroundColor Yellow
Write-Host ""
Write-Host "Terminal 2 - Blockchain (Local Node):" -ForegroundColor Cyan
Write-Host "cd smart-contracts && npx hardhat node" -ForegroundColor White
Write-Host "Running on: http://localhost:8545" -ForegroundColor Yellow
Write-Host ""
Write-Host "Terminal 3 - Deploy Contracts:" -ForegroundColor Cyan
Write-Host "cd smart-contracts && npx hardhat run scripts/deploy.js --network localhost" -ForegroundColor White
Write-Host ""
Write-Host "Terminal 4 - Backend API:" -ForegroundColor Cyan
Write-Host "php artisan serve" -ForegroundColor White
Write-Host "API: http://localhost:8000" -ForegroundColor Yellow
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Project URLs:" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "Backend API: http://localhost:8000" -ForegroundColor Cyan
Write-Host "Blockchain: http://localhost:8545" -ForegroundColor Cyan
Write-Host ""
Write-Host "Setup completed successfully!" -ForegroundColor Green
