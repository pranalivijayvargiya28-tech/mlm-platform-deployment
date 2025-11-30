# 🚀 Quick Start Guide - MLM Platform

**Fastest way to get the project running locally**

## Prerequisites
- Node.js v14+
- npm or yarn
- Git
- PHP 7.4+ (for backend)
- PostgreSQL/MySQL

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/pranalivijayvargiya28-tech/mlm-platform-deployment.git
cd mlm-platform-deployment
```

## 2️⃣ Extract Project Files

```bash
# If you have the zip file
Expand-Archive -Path "mlm-platform-complete_20251126_164547.zip" -DestinationPath "."
```

## 3️⃣ Run Automatic Setup (Windows PowerShell)

```powershell
# Run the automatic setup script
.\SETUP_AND_RUN.ps1
```

This script will:
- Check for Node.js
- Install dependencies
- Compile smart contracts
- Create .env file
- Run tests

## 4️⃣ Manual Setup (If Preferred)

### Frontend Setup
```bash
cd frontend
npm install
npm start
```
Runs on: http://localhost:3000

### Smart Contracts Setup
```bash
cd smart-contracts
npm install
npx hardhat compile
```

### Start Local Blockchain
```bash
cd smart-contracts
npx hardhat node
```
Blockchain on: http://localhost:8545

### Deploy Contracts
```bash
cd smart-contracts
npx hardhat run scripts/deploy.js --network localhost
```

### Backend Setup
```bash
composer install
cp .env.example .env
# Update .env with your database credentials
php artisan migrate
php artisan serve
```
API on: http://localhost:8000

## 5️⃣ Access the Application

| Component | URL | Status |
|-----------|-----|--------|
| Frontend | http://localhost:3000 | React App |
| Backend API | http://localhost:8000 | PHP/Laravel |
| Blockchain | http://localhost:8545 | Hardhat Node |

## 🐛 Troubleshooting

### Node.js not found
```bash
# Install Node.js from https://nodejs.org/
node --version  # Should show v14+ 
```

### Port already in use
```bash
# Change port in package.json or environment variables
# Frontend: Change REACT_APP_PORT
# Backend: Change API_PORT in .env
```

### npm install fails
```bash
# Clear npm cache
npm cache clean --force
npm install
```

### Smart contract compilation fails
```bash
# Update Hardhat
cd smart-contracts
npm update hardhat
npx hardhat compile
```

## 📚 Project Structure

```
mlm-platform-deployment/
├── frontend/              # React application
├── smart-contracts/       # Solidity contracts & Hardhat
├── app/                   # Core business logic
├── routes/                # API endpoints
├── database/              # Database models
├── tests/                 # Test files
├── README.md              # Full documentation
├── SETUP_AND_RUN.ps1      # Automatic setup script
└── QUICK_START.md         # This file
```

## 🎯 Next Steps

1. Explore the frontend at http://localhost:3000
2. Check API endpoints at http://localhost:8000
3. Deploy contracts to testnet
4. Update .env with blockchain RPC URLs
5. Configure database connection

## 📖 More Information

For detailed documentation, see [README.md](README.md)

## 🤝 Need Help?

- Check [GitHub Issues](https://github.com/pranalivijayvargiya28-tech/mlm-platform-deployment/issues)
- Review [README.md](README.md) for detailed setup

---

**Happy Coding!** 🚀
