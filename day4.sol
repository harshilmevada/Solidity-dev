// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;


contract ArreyContract {
    string[] public Name;

    function AddName(string memory _name) public {
        Name.push(_name);
    }

    function ArrCount() view public returns (uint) {
        return Name.length;
    }

    function ListOfName() view public returns (string[] memory NameArr){
        NameArr = Name;
        return NameArr;
    }
} 