// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auth {
    address private _administrator;
    uint val;

    constructor(address deployer) {
        _administrator = deployer;
    }

    function isAdministrator(address user) public view returns (bool) {
        return user == _administrator;
    }
    
    function delegate(address user_to_del, address admin) public {
        if(isAdministrator(admin))
        _administrator = user_to_del;
    }

    function adminSet (uint x, address user) public  {
        if(user == _administrator) {
            val = x;
        }
    }

    function getVal() public view returns (uint) {
        return val;
    }
}
