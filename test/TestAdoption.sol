pragma solidity ^0.4.11;


import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

// todo add gas price to make tests run in testrpc. Should I use js?
// this test can be run only `truffle develop`
contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    function testUserCanAdoptPet() {
        uint returnedId = adoption.adopt(8);

        uint expected = 8;

        Assert.equal(returnedId, expected, "Adoption of pet ID 8 should be recorder");
    }

    function testGetAdopterAddressByPetId() {
        address expected = this;

        address adopter = adoption.adopters(8);

        Assert.equal(adopter, expected, "Owner of pet ID 8 should be recorded");
    }

    function testGetAdopterAddressByPetIdInArray() {
        address expected = this;

        address[16] memory adopters = adoption.getAllAdopters(0);

        Assert.equal(adopters[8], expected, "bglf");
    }

    function testGetAdopterAddressNoArgsByPetIdInArray() {
        address expected = this;

        address[16] memory adopters = adoption.getAdoptersNoArgs();

        Assert.equal(adopters[8], expected, "Ha!");
    }

    function testGetNumber() {
        uint number = adoption.getNumber();

        Assert.equal(number, 1234, "Should be 1234");
    }
}
