// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;


contract MyContract {
    mapping(uint8 => string) public names;
    mapping(uint => User) public Users;
    mapping(address => mapping(uint => User)) public allUser;

    struct User {
        string email;
        string password;
    }

    constructor() {
        names[1] = "Adam";
        names[2] = "Adam";
        names[3] = "Adam";
        names[4] = "Adam";
    }

    function addUser(
        uint _id,
        string memory _email,
        string memory _password    
    ) public {
        Users[_id] = User(_email, _password);
    }

    function addAllUser(
        uint _id,
        string memory _email,
        string memory _password    
    ) public {
        allUser[msg.sender][_id] = User(_email, _password);
    }
}
