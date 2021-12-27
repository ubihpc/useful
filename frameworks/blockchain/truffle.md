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

### Discover the msg.sender address

In truffle console

```js
    web3.eth.getAccounts()
```

### Decomposing a BigNumber in Truffle Console

When getting a length from an array, truffle outputs something like: 

BN { negative: 0, words: [ 3, <1 empty item> ], length: 1, red: null }

Therefore, in truffle console

```js
    <variableName> = await <ContractName>.deployed()
    // for totalSupply 
    <variableName>.totalSupply().then(function(balance) { totalSupply = balance})
    totalSupply.words[0] // prints the actual totalSupply
    // for balanceOf
    <variableName>.balanceOf("ADDRESS").then(function(balance) { balanceOf = balance})
    balanceOf.words[0] // prints the actual balanceOf
```
