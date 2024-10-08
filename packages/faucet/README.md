A minimal Typescript faucet to drip native tokens on Ethereum chains

## Usage

1. Specify the environment variables.
   Note that you need to [`export`](https://linuxconfig.org/export) these variables for the faucet service to get them.

   | Variable                   | Description                                           | Default   |
   | -------------------------- | ----------------------------------------------------- | --------- |
   | `HOST`                     | Host that the indexer server listens on               | `0.0.0.0` |
   | `PORT`                     | Port that the indexer server listens on               | `3002`    |
   | `RPC_HTTP_URL`<sup>1</sup> | HTTP URL for Ethereum RPC                             |           |
   | `FAUCET_PRIVATE_KEY`       | Private key of wallet to distribute faucet funds from |           |
   | `DRIP_AMOUNT_ETHER`        | Drip amount in ether                                  |           |

   (1) If you use `http://localhost:8545` and it fails try using `http://127.0.0.1:8545` instead

1. Start the server.

   ```sh copy
   npx @latticexyz/faucet
   ```

   For example, you can use these values to drip 1 ETH for a local [`anvil`](https://book.getfoundry.sh/anvil/) instance:

   | Variable             | Value                                                              | Comments                           |
   | -------------------- | ------------------------------------------------------------------ | ---------------------------------- |
   | `RPC_HTTP_URL`       | http://127.0.0.1:8545                                              | `localhost` sometimes doesn't work |
   | `FAUCET_PRIVATE_KEY` | 0x59c6995e998f97a5a0044966f0945389dc9e86dae88c7a8412f4603b6b78690d | One of the default accounts        |
   | `DRIP_AMOUNT_ETHER`  | 1                                                                  |

## Getting ETH from a faucet

[This sample program](https://github.com/latticexyz/mud/tree/main/examples/faucet-client) shows how to obtain ETH from a faucet using TypeScript.

Alternatively, you can submit a `POST` request to the faucet.
For example, if you use the default `HOST` and `PORT`, this command requests a drip to the zero address.

```sh copy
curl -X POST http://127.0.0.1:3002/trpc/drip \
   -H "Content-Type: application/json" \
   -d '{"address": "0x0000000000000000000000000000000000000000"}'
```
