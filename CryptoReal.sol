// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CryptoReal is ERC20, Ownable {
    // Mapeo para almacenar direcciones en la lista negra
    mapping(address => bool) public isBlacklisted;

    // Límite máximo de transferencia (Anti-Whale)
    uint256 public maxTransferAmount = 1000 * 1e18; // Límite de 1000 tokens

    // Constructor: Inicializa el token con un nombre y un símbolo
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) Ownable(msg.sender) {
        _mint(msg.sender, 1000 * 1e18); // Acuña 1000 tokens al desplegar el contrato
    }

    // Función para añadir una dirección a la lista negra (solo el propietario puede hacerlo)
    function blacklist(address account) public onlyOwner {
        isBlacklisted[account] = true;
    }

    // Función para remover una dirección de la lista negra (solo el propietario puede hacerlo)
    function removeFromBlacklist(address account) public onlyOwner {
        isBlacklisted[account] = false;
    }

    // Función para actualizar el límite máximo de transferencia (solo el propietario puede hacerlo)
    function setMaxTransferAmount(uint256 amount) public onlyOwner {
        maxTransferAmount = amount;
    }

    // Función personalizada para transferir tokens con verificación de lista negra y límite de transferencia
    function safeTransfer(address recipient, uint256 amount) public {
        require(!isBlacklisted[msg.sender], "Sender is blacklisted"); // Verifica que el remitente no esté en la lista negra
        require(!isBlacklisted[recipient], "Recipient is blacklisted"); // Verifica que el destinatario no esté en la lista negra
        require(amount <= maxTransferAmount, "Transfer amount exceeds the maximum allowed"); // Verifica el límite de transferencia
        _transfer(msg.sender, recipient, amount); // Realiza la transferencia
    }
}