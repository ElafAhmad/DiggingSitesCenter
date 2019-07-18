pragma solidity ^0.5.1;

contract apple {
uint id = 0;

struct Apple{
uint id;
address Address;
string name;
string location;
uint depth;
uint length;
uint cost;
bool status;

}

Apple[20] public apples;

mapping (address => uint) public AppleAdress;

 function application(string memory name, string memory location, uint depth, uint length, uint cost) public {
        apples[id] = Apple(id, msg.sender,name, location, depth, length, cost, false);
       AppleAdress[msg.sender] = id;
        id++;
    }

    function setstatues (uint ApplicationID) public {
       // require(apples[ApplicationID].location = "Madinah","Location must be Madinah");
       string memory x = "Madinah";
       string memory y = apples[ApplicationID].location;
        require(x = y, "error");
        apples[ApplicationID].status = true;
    }
    
   
}
