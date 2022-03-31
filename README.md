# NFT-Mint-Dapp-Project
A mint web3 page for an nft collection I created called Rea1

This project use hardhat, react, ethers js and for fancy, styled-components

Before start, you need to install some dependencies
# Hardhat
1. To install it, you need to create an npm project by going to an empty folder, running `npm init`, and following its instructions. Once your project is ready, you should run.
2. `npm install --save-dev hardhat`
3. `npx hardhat`
4. `Create a sample project`, the sample project will ask you to install hardhat-waffle and hardhat-ethers, which makes Hardhat compatible with tests built with Waffle.
5. You'll install dotenv `npm i dotenv` to keep your private keys safe, certify that your .gitgnore have dotenv included.
6. Install `npm install --save-dev @nomiclabs/hardhat-etherscan` to verify your contract after deploying it on the test net.
7. Copy the lines inside `hardhat.config.js` in this repository.
8. Copy the lines inside `scripts/deploy.js`
9. if everything is installed correctly, and you have copied the ``nft.sol`` file, you can run ``npx hardhat run scripts/deploy.js`` or ``npx hardhat run scripts/deploy.js --network rinkeby``if you want to do on testnet
10. To verify on testnet use ``npx hardhat verify ADDRESS_OF_CONTRACT --network rinkeby "MaxSupply of collection" "number that started  the nft collection"

# React
1. `npx create-react-app my-app`
2. `cd my-app`
3. Now we need to install some dependencies to make all this app work:
4. `npm install --save ethers`
5. `npm install --save styled-components`
6. `npm install react-icons --save`
7. `npm i react-scroll`
8. `npm i react-router-dom`
9. 
