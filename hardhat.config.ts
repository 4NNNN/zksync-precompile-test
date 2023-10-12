import { HardhatUserConfig } from "hardhat/config";

import "@matterlabs/hardhat-zksync-deploy";
import "@matterlabs/hardhat-zksync-solc";

import "@matterlabs/hardhat-zksync-verify";
import { ProjectPathsUserConfig } from "hardhat/types";

interface CustomProjectPathsUserConfig extends ProjectPathsUserConfig {
  submodules: string;
}

// dynamically changes endpoints for local tests
export const zkSyncTestnet =
  process.env.NODE_ENV == "test"
    ? {
        url: "http://127.0.0.1:8011",
        ethNetwork: "http://127.0.0.1:8045",
        zksync: true,
      }
    : {
      url: "http://127.0.0.1:8011",
      ethNetwork: "http://127.0.0.1:8045",
      zksync: true,
        // contract verification endpoint
        verifyURL:
          "https://zksync2-testnet-explorer.zksync.dev/contract_verification",
      };

const config: HardhatUserConfig = {
  zksolc: {
    version: "latest",
    settings: {},
  },
  defaultNetwork: "zkSyncTestnet",
  networks: {
    hardhat: {
      zksync: false,
    },
    zkSyncTestnet,
  },
  solidity: {
    version: "0.8.17",
  },
  paths: {
    sources: "./contracts", // Specify the path to your parent contract directory
    tests: "./test", // Specify the path to your tests directory
    cache: "./cache", // Specify the path to the cache directory (optional)
    submodules: "./submodules/era-test-node/etc/system-contracts"
  } as CustomProjectPathsUserConfig,
};

export default config;
