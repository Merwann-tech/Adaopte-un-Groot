# Adaopte-un-Groot
# Adaopte 🐾

[![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)](https://developer.mozilla.org/fr/docs/Web/HTML) 
[![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)](https://developer.mozilla.org/fr/docs/Web/CSS) 
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)](https://developer.mozilla.org/fr/docs/Web/JavaScript) 
[![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white)](https://github.com/)  

Plateforme solidaire dédiée à l’adoption responsable d’animaux, permettant de leur offrir une seconde chance et de sensibiliser au bien-être animal.

---

## 📖 Sommaire
- [Objectifs du projet](#-t)
- [Thème choisi : Adaopte](#-thème-choisi-adaopte)
- [Pages à développer](#p)
- [Palette de couleurs](#-palette-de-couleurs)
- [Données sur les animaux](#-données-sur-les-animaux)
- [Bonus](#-b)
- [Notes importantes](#-notes-importantes)

---

## 🎯 Objectifs du projet

### HTML
- Intégrer et respecter la maquette fournie  
- Utiliser les balises sémantiques (`<nav>`, `<section>`, `<footer>`)  
- Mettre en place plusieurs pages et navigation entre elles  

### CSS
- Positionner correctement les éléments HTML  
- Personnaliser les polices de caractères  
- **Bonus** : rendre le site responsive  

### JavaScript
- Manipuler le DOM  
- Déclencher des actions au clic sur des éléments  
- Créer des éléments HTML dynamiques  
- Écrire des fonctions et manipuler des données brutes  
- Utiliser conditions, boucles et `searchParams`  
- Stocker et récupérer des données avec `localStorage`  

### Base de données
- Concevoir un schéma simple avec tables, colonnes, clés primaires et étrangères, et relations  
- Écrire les requêtes SQL de création (`CREATE`) et d’insertion (`INSERT`)  

### Git & organisation
- Réaliser des stand-ups quotidiens en groupes  
- Penser à l’accessibilité (sémantique, `alt`, etc.)  
- Maintenir un code lisible et propre (clean code)  
- Respecter les conventions de nommage et de commit  

---

## 🌸 Thème choisi : Adaopte – Adoption d’animaux

### Pages à développer
1. **Accueil**
   - Navbar et footer  
   - Boutons “Rechercher” → page “J’adopte”  
   - Bouton “Voir tous les animaux” → page “J’adopte”  

2. **J’adopte**
   - Affichage de tous les animaux disponibles  
   - Filtres par type d’animal et localisation  
   - Bouton “Rencontrer” → affiche dans la console le nom et type de l’animal  
   - **Bonus** : pagination  

3. **(Bonus) Devenir bénévole**
   - Formulaire envoyant un email  
   - Réutilisation de blocs de code déjà existants  

**Pages non obligatoires :**
- Création de compte, connexion, dons, guides, FAQ, conseils, mentions légales  

---

## ⚡ Bonus

- **Site responsive** : Le site s’adapte à toutes les tailles d’écran (mobile, tablette, desktop).  
- **Pagination** : La page “J’adopte” peut afficher les animaux par pages pour faciliter la navigation.  
- **Formulaire “Devenir bénévole”** : Possibilité d’envoyer un email (fonctionnalité simulée) et réutilisation de blocs de code de la page Accueil.  

---

## 💻 Installation et lancement

Pour faire fonctionner le site localement :

1. **Cloner le dépôt GitHub**

Avec gitbash par exemple
git clone https://github.com/votre-utilisateur/adaopte.git

2. **Ouvrir le projet dans Visual Studio Code**

cd adaopte
code .

3. **Ouvrir la page HomePage.html avec Live Server**

Installer l’extension **Live Server** dans Visual Studio Code si ce n’est pas déjà fait.  
Clic droit sur `HomePage.html` → **Open with Live Server**.  
Le site s’ouvrira automatiquement dans votre navigateur.
   
4. **Navigation entre les pages**

Depuis la page **Accueil**, cliquer sur “Rechercher” pour aller vers **J’adopte** avec filtres et boutons dynamiques gérés par JavaScript.  
(Bonus) La page **Devenir bénévole** est accessible depuis le menu ou un lien dédié.
