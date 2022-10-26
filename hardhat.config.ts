import { HardhatUserConfig } from 'hardhat/config'
import * as dotenv from 'dotenv'
import '@nomicfoundation/hardhat-toolbox'
import accountUtils from './utils/accounts'

dotenv.config()

const config: HardhatUserConfig = {
  solidity: {
    compilers: [
      {
        version: '0.8.11',
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      },
      {
        version: '0.8.4',
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      },
    ],
  },
  networks: {
    bkc_test: {
      url: `https://rpc-testnet.bitkubchain.io`,
      accounts: accountUtils.getAccounts(),
    },
  },
  gasReporter: {
    enabled: process.env.REPORT_GAS !== undefined,
    currency: 'USD',
  },
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
}

export default config
