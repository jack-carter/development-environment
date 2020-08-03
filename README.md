# development-environment
This outlines the software installations to prepare a new MacBook for development. The commands have been outlined below to allow you to walk through the checklist yourself, but I've also included a shell script to automate the process, should you prefer that approach.

## The Checklist
There are a number of installation approaches that will be used during this process, each following the proscribed best practice for each software installation. Here's a birds-eye view of that checklist:

| via Scripts          | via Homebrew        | via Installers          | via global `npm`   | via project `npm`
| -------------------- | ------------------- | ----------------------- | ------------------ | -------------------
| Homebrew (`brew`)    | AWS CLI (`aws`)     | Docker Desktop          | `npx`              | `typescript`
| `git`                | AWS SAM CLI (`sam`) | AWS Toolkit for VS Code | `yarn`             | `jest`
| `bash` environment   | Docker Toolbox      |                         |                    | `babel`
| `nvm`                |                     |                         |                    | `webpack`
| `node`               |                     |                         |                    | AWS CDK (`cdk`) 
| `npm`                |                     |                         |                    |

# via Scripts
This section will walk you through the scripts available online for the software installations that call that out as the proscribed means to install that product.

#### installing Homebrew (`brew`)
From the official site for [HomeBrew](https://brew.sh):
```
$ curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash
```
This will require a root-level login, as it's installing for use across all accounts on the machine. This will also download XCode, which is a rather sizable download, so patience is key. You can verify it was properly installed by using:
```
$ brew --version
Homebrew 2.4.9
```

#### installing `git`
This should've been installed as part of the HomeBrew install from above. You can check that this is the case by using:
```
$ git --version
git version 2.24.3 (Apple Git-128)
```
and then finalize `git` installation by using:
```
$ git config --global user.name "Jack Carter"
$ git config --global user.email "the.jack.carter@gmail.com"
```
substituting your own name and email above. You can check out the details at the official [Atlassian site](https://www.atlassian.com/git/tutorials/install-git).

#### installing `bash` environment
From the GitHub repo site for this [`bash` environment](https://github.com/jack-carter/bash):
```
$ git clone https://github.com/jack-carter/bash.git ~
$ mv ~/bash ~/.bash
$ source ~/.bash/profile
$ sudo cp ~/.bash/com.apple.Terminal.plist ~/Library/Preferences/com.apple.Terminal.plist
```

#### installing `nvm`, `node`, `npm`
From the official site for [`nvm`](https://github.com/nvm-sh/nvm):
```
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```
You can confirm this was properly installed by using:
```
$ nvm --version
0.35.3
```

# via Homebrew
This section will walk you through the details for each software installation available through a Homebrew formula. But, as a shortcut, you're welcome to use the Brewfile that's part of this repo. To quickly install the standard development environment you can use the following, and skip the remainder of this section:
```
$ cd ~/.bash && brew bundle install
```

#### installing AWS CLI & AWS SAM CLI
```
$ brew tap aws/tap
$ brew install awscli@2
$ brew install aws-sam-cli
```
From the official site for [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install-mac.html).

#### installing Docker Toolbox (if desired)
See this [site](https://medium.com/@yutafujii_59175/a-complete-one-by-one-guide-to-install-docker-on-your-mac-os-using-homebrew-e818eb4cfc3) for details should you desire to install the Docker Toolbox.

# via Installers
This section will walk you through the details for each software installation that requires a custom installer.

#### installing Docker Desktop
The official [Docker Install](https://docs.docker.com/docker-for-mac/install/) site. But you can [click here](https://download.docker.com/mac/stable/Docker.dmg) to start the install.

#### installing AWS Toolkit for VS Code
From the official AWS site [Setting Up the AWS Toolkit for Visual Studio](https://docs.aws.amazon.com/toolkit-for-visual-studio/latest/user-guide/setup.html), you can simply [click here](https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.AWSToolkitforVisualStudio2017) to begin the install.

# via global `npm`
There are several tools for use with `npm`, so I've included the details to walk you through the most frequently used ones.

#### installing `npx` & `yarn`
```
$ npm install -g npx
$ npm install -g yarn
```

# via project `npm`
This last section is optional, but it lists the tools I most commonly use across most projects.

#### intalling `typescript`, `jest`, `babel`, `webpack`
```
npm install --save-dev typescript @types/typescript ts-node
npm install --save-dev jest @types/jest ts-jest
npm install --save-dev @babel/core @babel/preset-env @babel/babel-loader
npm install --save-dev webpack webpack-cli
```

#### installing AWS CDK (`cdk`)
For project where you'll be using the AWS SDK & CDK:
```
npm install --save-dev aws-cdk
npm install --save aws-sdk
```
