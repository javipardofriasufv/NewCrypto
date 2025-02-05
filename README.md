# CryptoReal Token

## Description

**CryptoReal** is an Ethereum-based smart contract that implements an ERC-20 token with additional functionalities such as a blacklist and a maximum transfer limit (Anti-Whale). This contract has been developed using OpenZeppelin to ensure security and compliance with Ethereum ecosystem standards.

This project is ideal for developers, businesses, or individuals looking for a secure and regulated token implementation.

---

## Key Features

- **ERC-20 Standard Compliance**: Compatible with any wallet and exchange that supports ERC-20 tokens.
- **Blacklist System**: Allows the owner to block addresses from participating in token transfers.
- **Transfer Limit (Anti-Whale Mechanism)**: Sets a maximum number of tokens that can be transferred in a single transaction.
- **Secure Transfer Function**: Implements validations to ensure compliance with set rules.

---

## Use Cases

1. **Tokenized Projects**: Ensures controlled distribution and transfers.
2. **Fraud Prevention**: The blacklist system prevents suspicious addresses from interacting with the token.
3. **Anti-Whale Mechanism**: Limits large token movements to prevent market manipulation.

---

## Installation & Usage

### Requirements
- Solidity 0.8.24
- Ethereum Wallet (MetaMask, WalletConnect, etc.)
- Development Environment (Remix, Hardhat, Truffle, etc.)
- Connection to an Ethereum network (Mainnet, Goerli, Sepolia, etc.)

### Deployment

1. **Set up a compatible wallet.**
2. **Compile the contract in Remix or Hardhat.**
3. **Deploy on a testnet or mainnet using a provider such as Infura or Alchemy.**

### Interaction

- **Add an address to the blacklist:** `blacklist(address account)`
- **Remove an address from the blacklist:** `removeFromBlacklist(address account)`
- **Update the transfer limit:** `setMaxTransferAmount(uint256 amount)`
- **Execute a secure transfer:** `safeTransfer(address recipient, uint256 amount)`

---

## Project Structure

- **CryptoReal.sol**: Main contract implementing all functionalities.
- **README.md**: Project documentation.
- **LICENSE**: MIT License for code usage.

---

## Contributions

Contributions are welcome! To improve this project, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or fix (`git checkout -b feature/new-feature`).
3. Make changes and commit (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.

---

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## Contact

If you have any questions or suggestions, feel free to open an issue in the repository or contact me directly.

---

**CryptoReal** is a powerful tool for managing ERC-20 token transactions securely and transparently. We hope you find it useful! 🚀

