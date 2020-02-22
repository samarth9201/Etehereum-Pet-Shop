pragma solidity >=0.4.0<0.7.0;

contract Adoption{
    address[16] public adopters;

    //adopting a pet
    function adopt(uint petID) public returns(uint) {
        require(petID >=0 && petID <= 15);
        adopters[petID] = msg.sender;

        return petID;
    }

    //return adoptors array
    function getAdotters() public view returns(address[16] memory a){
        return adopters;
    }
}