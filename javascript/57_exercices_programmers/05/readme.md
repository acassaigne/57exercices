# Fizz Buzz Javascripy

## commencer un nouveau projet

Initialisation du projet cela va générer le fichier de configuration package.json

```bash
mkdir mon_projet
cd mon_projet
npm init
```

## installation de jest (unitest javascript)

```bash
npm install --save-dev jest
```

## exécution des tests

A ajouter dans le fichier `package.json` 

```json
"scripts": {
    "test": "jest  --watch"
  },
```

Pour lancer les tests :

```bash
npm run test
```

Pour lancer un test suivant pattern matching :

```bash
jest -t my_pattern
```

Resource https://medium.com/@moses.gunesch/running-jest-in-vs-code-2b636281b6ef

## Tester une application Vue.js 

Pour avoir un mini-serveur web permettant d'avoir l'application de type Single Page Application fonctionnelle, 
il convient de lancer cette commande python.

```bash
python3 -m http.server
```

## Autre solution pour démarer un serveur http via nodejs

Pour l'installation :

```bash
npm install --save-dev http-server
```

Pour le lancer : 
```bash
node ./node_modules/http-server/bin/http-server
```

## Doc Jest

https://jestjs.io/docs/en/getting-started
