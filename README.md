# MTA:sa Script For Admins(Ban admin)
This script includes banning admins within the server, which is accessible from the administrator rank and above. Stay tuned with us

![Mta](mta131.png)
---
# Notification source

**notiffication including 'Warning', 'error', 'info' and 'success' notf to use your server**

# hou to use Notification resource in server ?

**setup 1:**

```markdown
Download Source And Move to your server resource folder
Enter command in server command line:
refresh
start notf
if notf file is exists:
stop <your notf folder name>
start notf
```

**Setup 2:**
```markdown
go to the resource codes and change notification names to notf
go to server configuration file and add notf for automatic start
Restart your server
```

---
# MTA:SA Permanent Admin Ban System (banpadmin)

**Scripted by GodFather** – Secure and professional command to permanently ban cheating or rule-breaking admins.

A clean, safe, and rank-protected ban system for MTA:SA servers with high-level staff management.

## 🚀 Features

- `/banpadmin <player/part-of-name> <reason>` – Permanently ban an admin (rank ≤ 17)
  - Only usable by ranks **27+** (higher than target rank)
  - Prevents banning higher or equal ranks
  - Cannot ban core admin ranks (18+)
- Permanent ban with:
  - `pBanTime` set to 999999
  - Cash & Bank reset to 0
  - Instant kick with custom reason message
- Global server announcement for all logged-in players
- Full integration with:
  - **Accounts-System** (for account data)
  - **misc** resource (for player search)
  - **notf** resource (for notifications)

## 📸 Usage Example

`/banpadmin John Cheating in game and abusing powers`

Result:
- Player kicked with reason
- All players see: `[Punishment]: Admin John Banned By Administrator GodFather Forever from server reason: Cheating in game and abusing powers`

## ⚙️ Installation

1. Place the file in your server's resources folder
2. Add to `mtaserver.conf`:
   ```xml
   <script src="Admin_Ban.lua" type="server"/>

---

# Note:
![Rank_Admins](https://github.com/GodFather850/Makeadmin-command-Rank-admin-adminchat-for-MTA-Sa-)

**click link for rank admins in script Lua**

--- 

![Tux](https://upload.wikimedia.org/wikipedia/commons/3/35/Tux.svg)
