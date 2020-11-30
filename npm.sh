#https://www.javascripttutorial.net/nodejs-tutorial/npm-list/

npm --version
npm init 
npm install packages 
npm uninstall packages
npm install package  --save-dev

npm update package
npm list 
npm ls
npm list --depth=0
npm list --prod
npm list --prod --depth=0
npm list --dev
npm list --global
npm list --depth=0 --json

#https://www.sitepoint.com/npm-guide/
npm install -g npm@latest     #Updating npm
npm root -g   #list packages global
npm config list
npm config get prefix

npm search mkdir
npm cache clean --force

npm i <package>: install local package
npm i -g <package>: install global package
npm un <package>: uninstall local package
npm up: npm update packages
npm t: run tests
npm ls: list installed modules
npm ll or npm la: print additional package information while listing modules
