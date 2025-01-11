// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;  //Solidity Version

contract SimpleStorage {
    //FavoriteNumber gets initilized to 0 if no value is given 
    uint256 public favoriteNumber = 0;  // public, private, internal, external

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; 
        favoriteNumber = favoriteNumber + 1;
        uint256 testVar = 5; 
    }
        
    function something() public {
            testVar = 6; //Can I do this? 
            favoriteNumber = 7; // ?
    }
    
    // functions --> view
    function retrive() public view returns(uint256){
        return favoriteNumber;
    }
    // functions --> pure
    //function retrive() public pure returs(uint256){
    //   return 7;
    
}