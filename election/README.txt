Make sure that you have node installed
node --version

Make sure you have npm installed
npm --version

Install the Truffle Framework -- helps with building dApps on the 
Ethereum Blockchain
npm install -g truffle

Download Ganache from the truffle website
https://www.trufflesuite.com/ganache

Go to your downloads folder and find the AppImage file for Ganache
The file should look like:
ganache-2.5.4-linux-x86_64.AppImage

In a terminal window run
chmod a+x ganache-2.5.4-linux-x86_64.AppImage
./ganache-2.5.4-linux-x86_64.AppImage

This should start an instance of ganache
Select continue -- select Quickstart Ethereum

******************************************
Ganache is a locally controlled blockchain

Make sure the MetaMask extension is installed from last class
Open MetaMask select the network at the top -- open a dropdown menu
Select Custom RPC -> Opens a Form
Input Network Name as Private Network (Or whatever network name you would like)
New RPC URL as the RPC Server from Ganache: 
HTTP://127.0.0.1:7545
Input Chain ID:
1337

Add an account to MetaMask 
Click the Circle at the top right
Select import account
Grap one of the Account's Private Key's from Ganache by selecting
the key at the far right of the ganache screen
Paste the private key and click import

** If you are using VSCode to write these programs it is useful
To install the solidity extension

Now that Setup is done, we are going to build our application!

Write the Smart Contract
contracts > Election.sol

Write the Deployment Module
migrations > 2_deploy_contract.js

Write the function to connect 
js > app.js > initWeb3: function()

In order to deploy your application to Ganache
truffle migrate  or truffle migrate --reset

npm run dev

Source Of Application:
https://www.dappuniversity.com/articles/the-ultimate-ethereum-dapp-tutorial