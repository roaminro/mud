// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { IBaseWorld } from "@latticexyz/world/src/codegen/interfaces/IBaseWorld.sol";
import { ICustomErrorsSystem } from "./ICustomErrorsSystem.sol";
import { ILibWrapperSystem } from "./ILibWrapperSystem.sol";
import { INumberListSystem } from "./INumberListSystem.sol";
import { INumberSystem } from "./INumberSystem.sol";
import { IVectorSystem } from "./IVectorSystem.sol";

/**
 * @title IWorld
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @notice This interface integrates all systems and associated function selectors
 * that are dynamically registered in the World during deployment.
 * @dev This is an autogenerated file; do not edit manually.
 */
interface IWorld is
  IBaseWorld,
  ICustomErrorsSystem,
  ILibWrapperSystem,
  INumberListSystem,
  INumberSystem,
  IVectorSystem
{}
