# NFT-Mint-Dapp-Project
A mint web3 page for an nft collection I created called Rea1

# PREVIEW
![preview](https://user-images.githubusercontent.com/85500650/161134723-2dc19bda-a6b9-4664-967f-6cc7353638e8.PNG)


![preview1](https://user-images.githubusercontent.com/85500650/161134749-71274231-a256-4630-a787-6b94c53ed98d.PNG)

![preview3](https://user-images.githubusercontent.com/85500650/161136370-747a36c7-c89d-46e9-8bf1-872891fc443f.PNG)


This project use hardhat, react, ethers js and for fancy, styled-components

Before start, you need to install some dependencies

# React
1. `npx create-react-app mint-dapp-web3`
2. `cd mint-dapp-web3`
3. Now we need to install some dependencies to make all this app work:
4. `npm install --save ethers`
5. `npm install --save styled-components`
6. `npm install react-icons --save`
7. `npm i react-scroll`
8. `npm i react-router-dom`

# Hardhat

1. Create a folder inside ``mint-dapp-web3`` to install hardhat.
2. To install it, you need to create an npm project by going to an empty folder, running `npm init`, and following its instructions. Once your project is ready, you should run.
3. `npm install --save-dev hardhat`
4. `npx hardhat`
5. `Create a sample project`, the sample project will ask you to install hardhat-waffle and hardhat-ethers, which makes Hardhat compatible with tests built with Waffle.
6. You'll install dotenv `npm i dotenv` to keep your private keys safe, certify that your .gitgnore have dotenv included.
7. Install `npm install --save-dev @nomiclabs/hardhat-etherscan` to verify your contract after deploying it on the test net.
8. Install this libraries ``npm install @1001-digital/erc721-extensions`` and ``npm install @openzeppelin/contracts``
9. Copy the lines inside `hardhat.config.js` in this repository.
10. Copy the lines inside `scripts/deploy.js`
11. if everything is installed correctly, and you have copied the ``nft.sol`` file, you can run ``npx hardhat run scripts/deploy.js`` or ``npx hardhat run scripts/deploy.js --network rinkeby``if you want to do on testnet
12. To verify on testnet use ``npx hardhat verify ADDRESS_OF_CONTRACT --network rinkeby "MaxSupply of collection" "number that started  the nft collection"
13. After deploy, copy the lines inside ``artifacts/contracts/yourcontract.json`` and paste on your react app on ``blockchain`` folder, paste inside the ``abi.json`` file.
14. Change the contract address with your ``ADDRESS_OF_CONTRACT`` inside the ``config.js`` file.


# Run
``npm run start`` 


