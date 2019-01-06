const HDWalletProvider = require("truffle-hdwallet-provider");

require('dotenv').config()

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      gas: 4600000,
      network_id: "*" // Match any network id
    },
    rinkeby: {
      provider: () => new HDWalletProvider(process.env.MNEMONIC,
          "https://rinkeby.infura.io/v3/" + process.env.INFURA_API_KEY),
      host: "localhost",
      from: "0xD0A397b60Ec180E8b6f53010F8598f47991Dbfc3",
      network_id: "*",
      gas: 4500000,
    },
    main: {
      network_id: 1,
      provider: () => new HDWalletProvider(process.env.MNEMONIC,
          "https://mainnet.infura.io/v3/" + process.env.INFURA_API_KEY),
      gas: 8000000,
      gasPrice: 100000000000,
      host: "localhost",
      from: "0xD0A397b60Ec180E8b6f53010F8598f47991Dbfc3",
    },
    mocha: {
      reporter: 'eth-gas-reporter',
      reporterOptions : {
        currency: 'USD',
        gasPrice: 2
      }
    }
  }
};
