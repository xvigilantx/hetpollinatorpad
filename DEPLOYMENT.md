# Deployment Guide - Het Pollinatorpad Website

## Optie 1: Nieuwe Branch in Bestaande Repository

Als er al een repository bestaat voor hetpollinatorpad.nl:

```bash
# Clone de bestaande repository
git clone https://github.com/[username]/hetpollinatorpad.git
cd hetpollinatorpad

# Maak een nieuwe branch voor de redesign
git checkout -b v2-redesign

# Kopieer de nieuwe bestanden
# (kopieer de inhoud van deze folder naar de repository)

# Commit de wijzigingen
git add .
git commit -m "Website redesign v2.0 met video hero, custom illustraties en foto galleries"

# Push naar GitHub
git push origin v2-redesign
```

Dan kun je op GitHub een Pull Request maken om de changes te reviewen voordat je merged naar main.

## Optie 2: Nieuwe Repository

Als je een volledig nieuwe repository wilt:

```bash
# Initialiseer git in deze folder
cd pollinatorpad-website
git init

# Voeg alle bestanden toe
git add .

# Eerste commit
git commit -m "Initial commit - Het Pollinatorpad website v2.0"

# Maak een nieuwe repository op GitHub en voeg deze toe als remote
git remote add origin https://github.com/[username]/hetpollinatorpad.git

# Push naar GitHub
git branch -M main
git push -u origin main
```

## GitHub Pages Setup

1. Ga naar je repository op GitHub
2. Klik op "Settings"
3. Scroll naar "Pages" in de sidebar
4. Bij "Source" selecteer je branch (main of v2-redesign)
5. Klik "Save"
6. Je website is nu live op: `https://[username].github.io/hetpollinatorpad/`

## Custom Domain Setup (hetpollinatorpad.nl)

1. In GitHub Pages settings, voeg je custom domain toe: `hetpollinatorpad.nl`
2. Bij je domain provider (bijv. TransIP, Mijn Host):
   - Voeg een CNAME record toe: `www` → `[username].github.io`
   - Voeg A records toe voor apex domain:
     - `185.199.108.153`
     - `185.199.109.153`
     - `185.199.110.153`
     - `185.199.111.153`
3. Wacht op DNS propagatie (kan tot 24 uur duren)
4. Enable HTTPS in GitHub Pages settings

## Netlify Deployment (Alternatief)

1. Push code naar GitHub
2. Ga naar [netlify.com](https://netlify.com)
3. "New site from Git"
4. Selecteer je repository
5. Deploy settings:
   - Build command: (leeg laten)
   - Publish directory: `/`
6. Deploy!

Netlify geeft automatisch een URL en je kunt daar ook je custom domain instellen.

## Test Lokaal

Je kunt de website lokaal testen met een simpele HTTP server:

```bash
# Python 3
python3 -m http.server 8000

# Of met Node.js
npx http-server
```

Dan open je browser naar: `http://localhost:8000`

## Belangrijke Notes

- De video (Hommel__7_.mp4) is 13MB - dit kan hosting kosten beïnvloeden
- Overweeg om de video te comprimeren voor snellere laadtijden
- Alle afbeeldingen zijn al redelijk geoptimaliseerd
- De website is volledig statisch (geen database of server-side code nodig)
