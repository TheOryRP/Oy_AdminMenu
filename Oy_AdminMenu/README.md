# FiveM Admin Menu 🚀  

A **powerful and easy-to-use admin menu** for FiveM servers, designed to help server administrators manage players efficiently. The menu includes features such as kicking, banning, spectating, noclip mode, and inventory viewing.  

## ✨ Features  
✔️ **Open Admin Menu with `/admin`** – Only accessible to admins with specified roles.  
✔️ **Player Management** – Kick, ban, and view player details directly from the menu.  
✔️ **Spectate Players** – Observe players in real-time (coming soon).  
✔️ **Noclip Mode** – Allows admins to fly and move freely in the game (coming soon).  
✔️ **View Player Inventory** – Check a player's inventory directly from the UI.  
✔️ **Ban System with MySQL Storage** – Keeps track of banned players in a database.  
✔️ **Modern & Clean UI** – Simple and user-friendly admin panel interface.  

## 📂 Installation Guide  

### 1️⃣ **Download & Setup**  
1. Download the repository and place the `adminmenu` folder inside your `resources` directory.  
2. Open `server.cfg` and add the following line:  
   ```cfg
   ensure adminmenu
Import the adminmenu.sql file into your MySQL database.

2️⃣ Database Setup
This script requires a MySQL database to store bans. Execute the following SQL query in your database:

sql
Copy
Edit
CREATE TABLE IF NOT EXISTS `bans` (  
    `id` INT AUTO_INCREMENT PRIMARY KEY,  
    `identifier` VARCHAR(50) NOT NULL,  
    `reason` TEXT NOT NULL,  
    `banned_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);
3️⃣ Restart Your Server
After completing the steps above, restart your FiveM server and use the command /admin to access the menu.

⚙️ Configuration
🛠️ Setting Admin Groups
You can customize the admin roles that can access the menu. Open server.lua and modify this section:

lua
Copy
Edit
local AdminGroups = {"superadmin", "admin", "mod"}
Change the values to match the admin roles on your server.

📡 NUI Callbacks & Events
adminMenu:open – Opens the admin menu for the player.

adminMenu:kickPlayer – Kicks a player from the server.

adminMenu:banPlayer – Bans a player and stores the ban in the database.

adminMenu:getInventory – Fetches and displays a player's inventory.

adminMenu:getPlayers – Retrieves the current list of online players.

🖼️ Screenshots
(Coming Soon – Add screenshots of the UI here)

📝 Requirements
ESX Legacy

MySQL-Async

FiveM Server (FXServer)

🔄 Future Updates
🚀 Planned Features:

🔹 Spectate mode to monitor players live

🔹 Full noclip mode for free movement

🔹 Advanced ban system with time-based bans

🔹 Improved UI with detailed player stats

🎮 Commands
Command	Description
/admin	Opens the admin menu (only for authorized admins).
/noclip	Enables/disables noclip mode (coming soon).
/spectate [id]	Spectate a player (coming soon).
💡 How It Works
When an admin types /admin, the admin menu UI opens.

Admins can kick, ban, or view inventory of online players.

Banned players are stored in the database (bans table) for permanent tracking.

The UI communicates with the server via NUI callbacks to process actions.

🏆 Contributing
If you want to contribute, feel free to submit pull requests or report issues on GitHub. Any contributions are welcome!

💬 Contact & Support
If you need help or want to suggest new features, create an issue or contact me on Discord: https://discord.gg/h5wD3THGEy

📜 License
This project is licensed under the MIT License. You are free to use, modify, and distribute this script as long as proper credit is given.

markdown
Copy
Edit
