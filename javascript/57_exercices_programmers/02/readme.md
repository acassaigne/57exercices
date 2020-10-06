# Fizz Buzz Javascripy

## commencer un nouveau projet

Initialisation du projet cela va générer le fichier de configuration package.json

```bash
mkdir mon_projet
cd mon_projet
npm init
```

installation de jest (unitest javascript)

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

## Doc Jest

https://jestjs.io/docs/en/getting-started
