pragma solidity ^0.5.1;
contract Application {

uint id = 8765;
    // struct Location {
    //     string city;
    //     string area;
    //     string street;
    // }

//     struct application {
//         uint applicationId;
//         address Adress;
//         string orgnization;
//         string applierName;
//         string contractorName;

//         string startDate;
//         string endDate;

//         string location;
//         uint length;
//         uint depth;
//         bool status;
//         uint cost;
//     }

   
//     application[19] public applications;
//     mapping (address => application) applicationAdress;

// function addApplication(string memory orgnization, string memory applierName, string memory contractor,
// string memory startDate, string memory endDate, string memory location, uint length, uint depth, uint cost ) private {
//     id++;

// applications.push(application(id, msg.sender, orgnization, applierName, contractor, startDate, endDate, location, length, depth, false, cost));

// }


}



contract DigApplication {

    // declare our event here
    event NewApplication(uint zombieId, uint _applicationId, address Adress,  string  orgnization, string  applierName,
     string  contractorName, string  startDate, string  endDate,  string  location, uint length, uint depth, bool status, uint cost);
    uint idd = 9876;
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct application {
        //string name;
       // uint id;
        uint applicationId;
        address Adress;
        string orgnization;
        string applierName;
        string contractorName;

         string startDate;
         string endDate;

         string location;
        uint length;
        uint depth;
        bool status;
        uint cost;
    }

    application[] public applications;

    function _createApplication( string memory orgnization, string memory applierName,
     string memory contractorName, string memory startDate, string memory endDate,  string memory location, uint length, uint depth, bool status, uint cost) private {
        idd++;
        uint id = applications.push(application(idd, msg.sender, orgnization, applierName, contractorName, startDate,
         endDate,location, length, depth, false, cost)) - 1;
        emit NewApplication(id, idd, msg.sender, orgnization, applierName, contractorName, startDate,
         endDate, location, length, depth, status, cost);
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    // function createRandomZombie(string memory _name) public {
    //     uint randDna = _generateRandomDna(_name);
    //     _createApplication(_name, randDna);
    // }

}
