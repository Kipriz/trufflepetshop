pragma solidity ^0.4.4;

contract Adoption {
    address[16] public adopters;
    uint[16] public numbers;

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;


        return petId;
    }

    // it works because Solidity (or web3) needs an argument if a method returns an array
    function getAllAdopters(uint fake) view public returns (address[16]) {
        return adopters;
    }

    // does not work, "Invalid number of arguments" error will be in Chrome console
    function getAdoptersNoArgs() view public returns (address[16]) {
        return adopters;
    }

    // works because it returns a primitive
    function getNumber() view public returns (uint) {
        return 1234;
    }

    // does not works, "Invalid number of arguments" error will be in Chrome console
    function getNumbers() view public returns (uint[16]) {
        return numbers;
    }
}