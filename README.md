# Param Token Transfer

A beginner-friendly Clarity smart contract that allows users to transfer custom tokens between accounts on the Stacks blockchain.

## 🛠 Tech Stack
- Clarity (Smart Contracts)
- HTML, JavaScript (Frontend)
- Stacks.js (recommended for integration)

## 📦 Project Structure

```
param-token-transfer/
├── contracts/
│   └── param-token.clar
├── frontend/
│   ├── index.html
│   └── app.js
├── README.md
├── contract-address.txt (add after deployment)
```

## 🚀 How to Deploy & Test

1. Deploy `param-token.clar` using the Stacks testnet or Clarinet.
2. Update `contract-address.txt` with the deployed address.
3. Serve the frontend locally using Live Server or any static server.
4. Integrate with `Stacks.js` for full functionality.

## ✍️ Smart Contract Functions

- `mint(recipient, amount)` – Admin can mint new tokens.
- `transfer(recipient, amount)` – Send tokens to others.
- `get-balance(user)` – Check token balance.
- `get-total-supply()` – View total token supply.

## 👨‍💻 Author
Param Nahata

## 📸 Demo
*Add screenshots or demo link here after deployment*