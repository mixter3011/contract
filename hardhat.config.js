require('@nomicfoundation/hardhat-toolbox');
require('@openzeppelin/hardhat-upgrades');
require('@nomiclabs/hardhat-ethers');
require('@nomiclabs/hardhat-etherscan');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    localhost: {
      url: "http://127.0.0.1:8545" 
    },
    swisstronik: {
      url: `https://swisstronik-testnet.infura.io/v3/`, 
      accounts: [`0x${PRIVATE_KEY}`], 
    },
  },
  etherscan: {
    apiKey: "ETHERSCAN_API_KEY",
  },
};
