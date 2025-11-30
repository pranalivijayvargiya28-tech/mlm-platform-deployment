# mlm-platform-deployment


**Full-Stack MLM Platform** - Web3 enabled network with Smart Contracts, Admin System & Lottery Campaigns

Improved and enhanced version built with Replit AI collaboration.

---

## Project Structure

```
mlm-platform/
├── app/                          # Core application logic
├── config/                       # Configuration files
├── database/                     # Database models and schemas
├── frontend/                     # React frontend
│   ├── assets/                   # Images and media
│   ├── css/                      # Stylesheets
│   ├── public/                   # Static files
│   └── src/                      # React components
├── routes/                       # API endpoints
├── smart-contracts/              # Blockchain contracts
│   ├── contracts/                # Solidity contract files
│   └── mlm_platform_project/     # Hardhat project
├── tests/                        # Test suites
├── .env                          # Environment variables
├── AdminSystemController.php     # Admin panel controller
├── LotteryCampaign.jsx           # Lottery feature component
└── README.md                     # This file
```

## Features

✅ **Web3 Integration** - Smart contract based MLM system
✅ **Admin Dashboard** - Complete admin control panel
✅ **Lottery System** - Campaign-based lottery mechanism
✅ **User Management** - Role-based access control
✅ **Smart Contracts** - Solidity contracts on blockchain
✅ **React Frontend** - Modern UI with responsive design

## Installation & Deployment

### Prerequisites

- Git installed
- Node.js (v14+)
- npm or yarn
- PHP (for backend)
- PostgreSQL or MySQL

### Step 1: Clone Repository

```bash
git clone https://github.com/pranalivijayvargiya28-tech/mlm-platform-deployment.git
cd mlm-platform-deployment
```

### Step 2: Frontend Setup

```bash
cd frontend
npm install
npm start
```

### Step 3: Smart Contracts Setup

```bash
cd smart-contracts
npm install
npx hardhat compile
npx hardhat test
```

### Step 4: Backend Setup

```bash
# Copy environment file
cp .env.example .env

# Update database credentials in .env
# Install dependencies
composer install

# Run migrations
php artisan migrate

# Start server
php artisan serve
```

## Environment Variables

Create `.env` file with:

```
DB_HOST=localhost
DB_PORT=5432
DB_DATABASE=mlm_platform
DB_USERNAME=postgres
DB_PASSWORD=your_password

BLOCKCHAIN_RPC_URL=https://bsc-testnet.infura.io/v3/YOUR_INFURA_KEY
CONTRACT_ADDRESS=0x...
PRIVATE_KEY=your_private_key
```

## Deployment Options

### Option 1: GitHub Pages (Frontend Only)

```bash
cd frontend
npm run build
git add dist/
git commit -m "Deploy frontend"
git push
```

### Option 2: GCP (Recommended)

#### Create GCP Project
```bash
gcloud projects create mlm-platform-prod
gcloud config set project mlm-platform-prod
```

#### Deploy Backend to Cloud Run
```bash
cd smart-contracts
npm run deploy --network mainnet

# Deploy API to Cloud Run
gcloud run deploy mlm-api \
  --source . \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated
```

#### Deploy Frontend to Firebase
```bash
npm install -g firebase-tools
firebase login
firebase init
firebase deploy --only hosting
```

### Option 3: Docker Deployment

```bash
# Build Docker image
docker build -t mlm-platform .

# Run container
docker run -p 3000:3000 -p 8000:8000 mlm-platform
```

## Testing

```bash
# Run smart contract tests
cd smart-contracts
npx hardhat test

# Run frontend tests
cd frontend
npm test

# Run backend tests
cd backend
php artisan test
```

## API Endpoints

- `POST /api/users/register` - User registration
- `POST /api/users/login` - User login
- `GET /api/users/:id` - Get user details
- `GET /api/campaigns` - List campaigns
- `POST /api/campaigns` - Create campaign
- `GET /api/lottery/:id` - Get lottery details

## Smart Contract Deployment

### Deploy to BSC Testnet

```bash
cd smart-contracts
npx hardhat run scripts/deploy.js --network bsc-testnet
```

### Verify Contract

```bash
npx hardhat verify --network bsc-testnet CONTRACT_ADDRESS
```

## Performance Optimization

- Frontend: Lazy loading, code splitting
- Backend: Database indexing, caching
- Smart Contracts: Gas optimization, efficient algorithms

## Security

✅ Input validation
✅ SQL injection prevention  
✅ XSS protection
✅ CORS configuration
✅ Contract audit ready

## Contributing

For improvements and bug fixes:

```bash
git checkout -b feature/your-feature
git commit -m "Add your feature"
git push origin feature/your-feature
```

## License

MIT License - See LICENSE.md

## Support

For issues and questions:
- GitHub Issues: https://github.com/pranalivijayvargiya28-tech/mlm-platform-deployment/issues
- Email: your-email@example.com

---

**Built with ❤️ using Web3 & Node.js**
