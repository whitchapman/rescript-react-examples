# ReScript React Template

This is a template created manually based on a fellow ReScripter's [excellent article](https://dusty.phillips.codes/2022/05/07/fast-bare-rescript-react-2022/) and also the official ReScript [starter template](https://github.com/rescript-lang/rescript-project-template).

## Initial Modifications

The following modifications were made to the original template per the article:

##### package.json:
- added `"type": "module",`
- renamed script `start` to `build:watch`
- added script `"build:deps": "rescript build -with-deps"`

##### added npm dependencies:
```sh
npm install @rescript/react --save-dev
npm install react react-dom
npm install vite --save-dev
```

##### bsconfig.json:
- changed `package-specs->module` to `es6-global`
- changed `suffix` to `.mjs`
- added `"reason": { "react-jsx": 3 },`
- added `"@rescript/react"` to `bs-dependencies`

## Installation

```sh
npm install
```

## Build

- Build: `npm run build`
- Clean: `npm run clean`
- Build & watch: `npm run build:watch`

## Test

```sh
node src/Demo.mjs
```

## React Modifications

##### code:
- modify Demo.res to be a react component
- render Demo component using ReactDOM in Index.res
- reference Index.mjs from index.html as a module

##### package.json scripts:
- add `"start": "vite",`
- add `"preview": "vite preview",`
- add `"release": "vite build"`

## Run

##### start rescript:
```sh
npm run build:watch
```

##### start the dev-server:
```sh
npm start
```

##### browse
```sh
http://localhost:3000
```

## Release

##### build
```sh
npm run release
```

##### run
```sh
cd dist
npx http-server
```

##### browse
```sh
http://localhost:8080
```
