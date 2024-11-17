# Regi Token ERC20 Token

This repository contains the smart contract code for `Regi Token`, a custom ERC20 token implemented using OpenZeppelin libraries. The token is designed to support minting (by the owner), burning (by any user), and standard ERC20 transfers.

---

## Features

- **Minting:** The contract owner can mint new tokens to any address.
- **Burning:** Any user can burn their own tokens.
- **Transferring:** Users can transfer tokens to other addresses.
- **Compliance:** Follows the ERC20 standard for compatibility with wallets and exchanges.

---

## Tech Stack

- **Solidity**: ^0.8.17
- **OpenZeppelin Contracts**: For secure and reliable token implementation.
- **HardHat**: For testing, deployment, and local blockchain environment.

---

## Contract Details

- **Token Name**: Regi Token
- **Token Symbol**: REGI
- **Standards**: ERC20
- **License**: MIT

---

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/regi-token.git
   cd regi-token
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Compile the contract**:
   ```bash
   npx hardhat compile
   ```

4. **Deploy the contract**:
   ```bash
   npx hardhat run scripts/deploy.js --network <network-name>
   ```

   Replace `<network-name>` with the network you are deploying to (e.g., `localhost` for local development).

---

## Usage

### Minting Tokens

The contract owner can mint new tokens to any address:

```javascript
const myToken = await ethers.getContractAt("RegiToken", "<deployed-contract-address>");
await myToken.mint("<recipient-address>", ethers.utils.parseUnits("1000", 18));
```

### Burning Tokens

Any user can burn their own tokens:

```javascript
await myToken.burn(ethers.utils.parseUnits("100", 18));
```

### Transferring Tokens

Users can transfer tokens to other addresses:

```javascript
await myToken.transfer("<recipient-address>", ethers.utils.parseUnits("50", 18));
```

---

## License

This contract is open-source and available under the MIT License.

---

## Author

- **FB**: Reginald Carl Sanchez
- **GitHub**: @Regie04
```
