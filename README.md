# development-environment
This outlines the software installations to prepare a new MacBook for development. The commands have been outlined below to allow you to walk through the checklist yourself, but I've also included a shell script to automate the process, should you prefer that approach.

## The Checklist
There are a number of installation approaches that will be used during this process, each following the proscribed best practice for each software installation. Here's a birds-eye view of that checklist:

* Scripts
  * Homebrew
  * `git`
  * `nvm` (`npm`, `node`)

* Homebrew (`brew`)
  * AWS CLI (`aws`)
  * AWS SAM CLI (`sam`)
  * Docker Toolbox (if desired)

* Installers
  * Docker Desktop
  * AWS Toolkit for Visual Studio Code

* `npm` (global)
  * `npx`
  * `yarn`

* `npm` (project)
  * `typescript @types/typescript ts-node`
  * `jest @types/jest ts-jest`
  * `@babel/core @babel/node @babel/preset-env babel-loader`
  * `webpack webpack-cli`
  *  AWS CDK (`cdk`)

### Installs via Scripts
This section will walk you through the scripts available online for the software installations that call that out as the proscribed means to install that product.

#### Homebrew (brew)
From the official site for [HomeBrew](https://brew.sh):
```
$ curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
```
This will require a root-level login, as it's installing for use across all accounts on the machine. This will also download XCode, which is a rather sizable download, so patience is key. You can verify it was properly installed by using:
```
$ brew --version
```
which should display something along the lines of:
```
Homebrew 2.4.9
```

#### git
This should've been installed as part of the HomeBrew install from above. You can check that this is the case by using:
```
$ git --version
git version 2.24.3 (Apple Git-128)
```

#### nvm (node,npm)
From the official site for [`nvm`](https://github.com/nvm-sh/nvm):
```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```
You can confirm this was properly installed by using:
```
$ nvm --version
0.35.3
```

### Homebrew
This section will walk you through the details for each software installation available through a Homebrew formula. But, as a shortcut, you're welcome to use the Brewfile that's part of this repo.

#### AWS CLI
#### AWS SAM CLI
#### Docker Toolbox (if desired)

### Installers
This section will walk you through the details for each software installation that requires a custom installer.

#### Docker Desktop
#### AWS Toolkit for Visual Studio Code

### npm (global)
There are several tools for use with `npm`, so I've included the details to walk you through the most frequently used ones.

#### npx
#### yarn

### npm (project)
This last section is optional, but it lists the tools I most commonly use across most projects.

#### typescript
#### @types/typescript
#### ts-node
#### jest
#### ts-jest
#### @types/jest
#### AWS CDK
