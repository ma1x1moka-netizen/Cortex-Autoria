# 🏎️ Cortex-Autoria

A hands-on implementation of a decentralized car escrow platform built using **ERC-4337 Account Abstraction**.

The project focuses on creating secure smart contract accounts capable of managing multi-deal vehicle trades with built-in arbiter dispute resolution.

---

## 🛠️ Tech Stack & Dependencies

* **Solidity** `^0.8.27`
* **Foundry** (Forge for compilation & testing)
* **ERC-4337** (Account Abstraction via `@account-abstraction`)
* **OpenZeppelin** (Cryptographic utils & Reentrancy guards)

---

## 📦 Project Structure

* `CortexAccount.sol` — Custom smart contract wallet verifying ERC-4337 user operations and signatures.
* `Autoria.sol` — Escrow contract featuring multi-deal tracking, automated seller pledges, and dispute settlement.

---

## 🚀 Quick Start

### Installation

Clone the repository and install dependencies:

```bash
forge install openzeppelin/openzeppelin-contracts
forge install eth-infinitism/account-abstraction