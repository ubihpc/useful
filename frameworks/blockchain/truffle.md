# Truffle

#### Init

```bash
cd <PROJECT_FOLDER>
truffle init
```

#### Compile contracts

```bash
cd <PROJECT_FOLDER>
truffle compile
```

#### Deploy contracts

```bash
cd <PROJECT_FOLDER>
truffle migrate
```

#### Open console

```bash
cd <PROJECT_FOLDER>
truffle console
```

#### Checking the contract in truffle console

In truffle console

```js
    <variableName> = await <ContractName>.deployed()
    // Getting the contract name
    <variableName>.name()
    // Getting the contract symbol
    <variableName>.symbol()
```

#### Move to a new address 

Because now we have used Inheritance - not a different Ganache account

```bash
truffle migrate --reset
```