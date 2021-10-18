#https://www.javascripttutorial.net/nodejs-tutorial/npm-list/

npm --version
npm init --yes

npm install packages
npm install package  --save-dev
npm i <package>: #install local package
npm i -g <package>: #install global package

npm uninstall packages
npm un <package>: #uninstall local package
npm up #npm update packages
npm t #run tests
npm ll or npm la: #print additional packagenpm information while listing modules

npm pack        #genera pachete zipado

npm docs [package-name]   #Go to documentation page of package
npm bugs [package-name]   #Go to issue page of package
npm outdated              #List outdated packages
npm update package
npm rm <package-name>

npm list 
npm ls    #List packages modules
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



npm install -g nodemon # or using yarn: yarn global add nodemon

