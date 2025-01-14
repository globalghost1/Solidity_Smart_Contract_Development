// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;  //Solidity Version

contract SimpleStorage {
    //FavoriteNumber gets initilized to 0 if no value is given 
    uint256 public favoriteNumber = 0;  // public, private, internal, external

    //uint256[] listOfFavoriteNumbers; // 0,1,2, [77, 68 , 90]
    struct Person {
        uint256 favoriteNumer;
        string name;
    }

    //Dynamic array
    Person [] public listOfPeople; //[] --> Empty list
    

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public Mariah = Person({favoriteNumber: 16, name: "Pat"});
    // Person public Jon = Person({favoriteNumber: 12, name: "Pat"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber; 
        favoriteNumber = favoriteNumber + 1;
        uint256 testVar = 5; 
    }
        
    function something() public {
        TestVar = 6; //Can I do this? 
        favoriteNumber = 7; // ?
    }
    
    // functions --> view
    function retrive() public view returns(uint256){
        return favoriteNumber;
    }
    // functions --> pure
    //function retrive() public pure returs(uint256){
    //   return 7;
    
    // calldata, memory, storage
    function addPerson (string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }

    
}