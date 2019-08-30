pragma solidity >=0.4.21 <0.6.0;
import './Company.sol';


contract Contract {

    address public salarie;
    address public manager;

    Company public company;

}
/* Document */
contract Document is Contract{
    
    string ipfsHash;        // IPFS hash
    string title;           // title
    uint256 uploadedOn;     // Uploaded timestamp

    struct Detail_Contract {
        /*
        Detail des champs du contrat de travail
        */
        string date;
        
    }    
    constructor(address employee, address manager, Company company) public {
        employee = msg.sender;

    }
    function CreateDocument(address employee, address manager, Company company) public {
        
    }

    /*
        Function IPFS => non
        Function Signature => 
        Function Consultation
    */


}
/* Smart_Contract */
contract Smart_Contract is Contract {

    struct Detail_Contract {
        /*
        Detail des champs du contrat de travail
        */
        string date;
    }  
    
    function createSmartContract () public {
    require(msg.sender == manager, "fail");
    proposals.push(Proposal({
      name: proposalName,
      voteCount: 0
    }));
  }
    /*
        Function Signature
        Function Consultation
    */
}