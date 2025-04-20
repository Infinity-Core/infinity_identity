# infinity_identity - RedM Identity Module

Advanced identity creation and management module for RedM, developed by Shepard & iiRedDev (ALTITUDE-DEV.COM). Designed for seamless integration with Infinity Core and Infinity Skin.

## ✨ Main Features

- Character identity creation (name, nationality, age, etc.)
- Modern web UI for identity input (html/core.html)
- Full synchronization with core and skin modules
- Database integration (requires oxmysql)
- Client/server validation and checks
- Easy integration with multi-character and skin systems

## 📦 Installation

1. Place this folder in your server's `resources` directory.
2. Add the resource to your `server.cfg`:
   ```
      ensure oxmysql              # Module SQL
      ensure infinity_core          # Module Framework core
      ensure infinity_skin          # Module Skin (skins)
      ensure infinity_chars         # Module Multichars (verif accounts and multichars)
      
      ensure infinity_needs         # Module Metabolism, inventory (inventory and metabolism)
      ensure infinity_identity      # Module Identity (identity, skin and login)
   ```
3. Make sure [oxmysql](https://github.com/overextended/oxmysql) is installed and started before this script.
4. Configure the files as needed.

## ⚙️ Configuration

- Main scripts:
  - `cl_check.lua` (client validation)
  - `sv_check.lua` (server validation)
  - `config.lua` (main configuration)
- User interface: `html/`

## 🛠 Contribution

Contributions are welcome!
Please create an issue or pull request for any suggestion or improvement.

## 🤝 Support & Links

- Documentation: [https://altitude-dev.gitbook.io/doc/](https://altitude-dev.gitbook.io/doc/)
- Discord support: [https://discord.gg/ncH7GX3XJd](https://discord.gg/ncH7GX3XJd)
- Authors: Shepard, iiRedDev

---

> Module licensed by ALTITUDE-DEV.COM. Any unauthorized reproduction or distribution is prohibited.
