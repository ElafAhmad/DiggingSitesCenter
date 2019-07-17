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
}

Apple[20] public apples;

mapping (address => uint) public AppleAdress;

 function application(string memory name, string memory location, uint depth, uint length, uint cost) public {
        apples[id] = Apple(id, msg.sender,name, location, depth, length, cost);
       AppleAdress[msg.sender] = id;
        id++;
    }
    
   
}
