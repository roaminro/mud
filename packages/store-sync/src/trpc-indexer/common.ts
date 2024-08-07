import { Hex } from "viem";
import { StorageAdapterBlock, SyncFilter, TableWithRecords } from "../common";

export type QueryAdapter = {
  /**
   * @deprecated
   */
  findAll: (opts: { chainId: number; address?: Hex; filters?: readonly SyncFilter[] }) => Promise<{
    readonly blockNumber: bigint | null;
    readonly tables: readonly TableWithRecords[];
  }>;
  getLogs: (opts: {
    readonly chainId: number;
    readonly address?: Hex;
    readonly filters?: readonly SyncFilter[];
  }) => Promise<StorageAdapterBlock>;
};
