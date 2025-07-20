// EVM, Ethereum Virtual Machine
// Ethereum, Polygon, Arbitrum, Optimism, Zksync

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // state our version

contract SimpleStorage {
    // Basic types: boolean, uint, int, address, bytes
    // uint256 if no initialize then 0 else sesuai valuenya
    uint256 myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumber;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person(103, "Kevin");
    // Person public joko = Person(104, "Joko");

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}



