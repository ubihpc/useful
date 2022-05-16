# Hardhat 

#### Init 

```bash
cd <PROJECT_FOLDER>
npx hardhat
```

#### Compile contracts

```bash
cd <PROJECT_FOLDER>
npx hardhat compile
```

#### Test contracts 

```bash
npx hardhat test # Will run test in test folder - it compiles as well
```

#### Launch local blockchain network

```bash
npx hardhat node
```

#### Deploy contracts locally

```bash
npx hardhat run scripts/deploy.js --network localhost
```