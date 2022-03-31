require("@nomiclabs/hardhat-waffle");
require('dotenv').config();
require("@nomiclabs/hardhat-etherscan");


 module.exports = {
  solidity: '0.8.4',
  networks: {
    rinkeby: {
      url: process.env.STAGING_ALCHEMY_KEY, 
      accounts: [process.env.PRIVATE_KEY],
      gas: 5500000,
    },
  },
  etherscan: {
    // Your API key for Etherscan
    // Obtain one at https://etherscan.io/
    apiKey: process.env.STAGING_ETHERSCAN_KEY,
  }
};