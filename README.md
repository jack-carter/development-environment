# development-environment
This outlines the software installations to prepare a new MacBook for development. The commands have been outlined below to allow you to walk through the checklist yourself, but I've also included a shell script to automate the process, should you prefer that approach.

## The Checklist
There are a number of installation approaches that will be used during this process, each following the proscribed best practice for each software installation. Here's a birds-eye view of that checklist:

* Script installations
  * Homebrew
  * nvm (npm, node)

* Homebrew installations
  * git
  * AWS CLI
  * AWS SAM CLI
  * Docker Toolbox (if desired)

* Downloaded installations
  * Docker Desktop
  * AWS Toolkit for Visual Studio Code

* npm (global)
  * npx
  * yarn

* npm (project)
  * typescript
  * @types/typescript
  * ts-node
  * jest
  * ts-jest
  * @types/jest
  * AWS CDK
