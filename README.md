# 🚀 GIWA Testnet Bot Setup Instructions

Welcome to the bot setup guide! This guide is designed to be beginner-friendly — just **follow the steps**, and your bot will be ready to run with **minimal terminal use**.

> 📱 [If you're using Termux on mobile, check this guide](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

---

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Installation Steps](#installation-steps)
3. [Configuration Files](#configuration-files)
4. [Running the Bot](#running-the-bot)
5. [Contact and Support](#contact-and-support)

---

## Prerequisites

Make sure you have the following installed:

- **Node.js** (Recommended: `v22.11.0`)
- **npm** (Comes with Node.js)

📦 Download from here: [Node.js Installer](https://t.me/KeoAirDropFreeNe/257/1462)

---

## Installation Steps

<details>
<summary>✅ 1. Clone the Bot Repository</summary>

If you haven't installed Git, [download it here](https://git-scm.com/).

```bash
git clone https://github.com/MeoMunDep/giwa-testnet.git
cd giwa-testnet
```

</details>

<details>
<summary>✅ 2. Edit Configuration Files</summary>

Set up the following files **before running the bot** (details below):

- `configs.json`
- `privateKeys.txt`
- `proxies.txt` (optional)

</details>

---

## Configuration Files

<details open>
<summary>📜 <strong>1. configs.json</strong> - Bot Settings</summary>

```json
{
  "proxyMode": "round",
  "delayEachWallet": [1, 1],
  "timeToRestartAllWallets": 300,
  "howManyWalletsRunInOneTime": 1,

  "bridgeL1toL2": {
    "enabled": true,
    "count": 1,
    "amount": 0.0001
  },
  "bridgeL2toL1": {
    "enabled": true,
    "count": 1,
    "amount": 0.0001
  },
  "deployERC20": {
    "enabled": true,
    "count": 1
  },
  "sendERC20": {
    "enabled": true,
    "amount": 1000,
    "count": 1
  },
  "deployERC721": {
    "enabled": true,
    "count": 1
  },
  "deployDomain": {
    "enabled": true,
    "count": 1
  }
}
```

| Field                        | Type   | Description                                                     |
| ---------------------------- | ------ | --------------------------------------------------------------- |
| `proxyMode`                  | string | Proxy usage mode (`round`, `random`, …).                        |
| `delayEachWallet`            | array  | Delay between each wallet in **seconds** (random within range). |
| `timeToRestartAllWallets`    | number | Restart the whole bot after this many seconds (`0` = disable).  |
| `howManyWalletsRunInOneTime` | number | Number of wallets running concurrently.                         |

### **Bridge / Deploy / Send Tasks**

| Field                  | Type    | Description                            |
| ---------------------- | ------- | -------------------------------------- |
| `bridgeL1toL2.enabled` | boolean | Enable/disable L1 → L2 bridge.         |
| `bridgeL1toL2.count`   | number  | Number of times to bridge L1 → L2.     |
| `bridgeL1toL2.amount`  | number  | Amount of ETH to bridge L1 → L2.       |
| `bridgeL2toL1.enabled` | boolean | Enable/disable L2 → L1 bridge.         |
| `bridgeL2toL1.count`   | number  | Number of times to bridge L2 → L1.     |
| `bridgeL2toL1.amount`  | number  | Amount of ETH to bridge L2 → L1.       |
| `deployERC20.enabled`  | boolean | Enable/disable ERC20 token deployment. |
| `deployERC20.count`    | number  | Number of tokens to deploy.            |
| `sendERC20.enabled`    | boolean | Enable/disable sending ERC20 token.    |
| `sendERC20.amount`     | number  | Amount of ERC20 tokens to send.        |
| `sendERC20.times`      | number  | How many times to send ERC20.          |

</details>

<details>
<summary>🗂️ 2. privateKeys.txt - Wallet List</summary> 
  
📥 [Generate wallets here](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

Each line is one private key:

```
privatekey1
privatekey2
privatekey3
```

</details>

<details>
<summary>🌐 3. proxies.txt - Proxy List (Optional)</summary>

💡 [Get free/paid proxies from here](https://www.webshare.io/?referral_code=4l5kb3glsce7)

Supported formats:

```
host:port
protocol://host:port
protocol://user:pass@host:port
```

</details>

---

## Running the Bot

<details open>
<summary>▶️ For Windows Users</summary>

Just **double click** on `run.bat`

✅ This script will:

- Install all required modules
- Run the bot automatically

> You **don’t need to type any command manually**!

</details>

<details>
<summary>▶️ For Linux/macOS Users</summary>

Run this command in terminal:

```bash
./run.sh
```

Or make it executable and double-click:

```bash
chmod +x run.sh
./run.sh
```

</details>

---

## Contact and Support

- **Support me via Donate**: [Here](https://t.me/KeoAirDropFreeNe/312/27801)
- **Work Contact**: [@MeoMunDep](https://t.me/MeoMunDep)
- **Support Group**: [Join here](https://t.me/KeoAirDropFreeNe)
- **Updates Channel**: [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube**: [@keoairdropfreene](https://www.youtube.com/@keoairdropfreene)
- **Instagram**: [@meomundep](https://www.instagram.com/meomundep)
- **TikTok**: [@meomundep](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**: This code is provided "as is" without any warranties. Use it at your own risk. You are solely responsible for any consequences arising from its use. Redistribution or sale of this code in any form is strictly prohibited.

✨ Thank you for using the bot, hope you earn from my scripts! Good luck! 🚀
