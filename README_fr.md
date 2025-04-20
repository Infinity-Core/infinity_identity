# infinity_identity - Module d'identité RedM

Module avancé de création et gestion d'identité pour RedM, développé par Shepard & iiRedDev (ALTITUDE-DEV.COM). Conçu pour une intégration parfaite avec Infinity Core et Infinity Skin.

## ✨ Fonctionnalités principales

- Création d'identité personnage (nom, nationalité, âge, etc.)
- Interface web moderne pour la saisie de l'identité (html/core.html)
- Synchronisation complète avec les modules core et skin
- Intégration base de données (oxmysql requis)
- Vérifications côté client et serveur
- Intégration facile avec les systèmes multi-personnages et skin

## 📦 Installation

1. Placez ce dossier dans `resources` de votre serveur RedM.
2. Ajoutez la ressource à votre `server.cfg` :
   ```
ensure oxmysql              # Module SQL
ensure infinity_core          # Module Framework core
ensure infinity_skin          # Module Skin (skins)
ensure infinity_chars         # Module Multichars (verif accounts and multichars)

ensure infinity_needs         # Module Metabolism, inventory (inventory and metabolism)
ensure infinity_identity      # Module Identity (identity, skin and login)
   ```
3. Assurez-vous que [oxmysql](https://github.com/overextended/oxmysql) est installé et lancé avant ce script.
4. Configurez les fichiers selon vos besoins.

## ⚙️ Configuration

- Scripts principaux :
  - `cl_check.lua` (validation client)
  - `sv_check.lua` (validation serveur)
  - `config.lua` (configuration principale)
- Interface utilisateur : `html/`

## 🛠 Contribution

Toute contribution est la bienvenue !
Merci de créer une issue ou une pull request pour toute suggestion ou amélioration.

## 🤝 Support & liens

- Documentation : [https://altitude-dev.gitbook.io/doc/](https://altitude-dev.gitbook.io/doc/)
- Discord support : [https://discord.gg/ncH7GX3XJd](https://discord.gg/ncH7GX3XJd)
- Auteurs : Shepard, iiRedDev

---

> Module sous licence ALTITUDE-DEV.COM. Toute reproduction ou distribution non autorisée est interdite.
