pragma solidity >=0.4.21 <0.6.0;
import './Company.sol';
import './User.sol';

contract Contract {
    Company public company;
    Employee public employee;
    Manager public manager;

}
/* Document */
contract Document is Contract{

    string ipfsHash;        // IPFS hash
    string title;           // title
    uint256 uploadedOn;     // Uploaded timestamp
    string path_miniature;  // Path du chemin des miniatures

    constructor(employee, manager, company, string ipfsHash, string title, uint256 uploadedOn) public {
        

    }

    function CreateDocument(address employee, address manager, Company company, string ipfsHash, string title, uint256 uploadedOn, string path_miniature) public {
        
    }

    /*
        Function IPFS => non
        Function Signature => 
        Function Consultation
    */


}
/* Smart_Contract */
contract Smart_Contract is Contract {

/* Struct par type de contrat 
mapping address employee
clef adress user / tableau CDI

*/
    struct CDI{
        Company address_company; 
        Employee address_employee;
        Manager address_manager;

        uint StartedDate;
        uint EndedDate;

        uint salary ;
    }
    struct CDD {
        Company address_company; 
        Employee address_employee;
        Manager address_manager;

        uint StartedDate;
        uint EndedDate;
        uint salary ;
    }
    struct Stage{
        Company address_company; 
        Employee address_employee;
        Manager address_manager;

        uint StartedDate;
        uint EndedDate;
        uint salary ;
    }
    struct Esclavage{
        Company address_company; 
        Employee address_employee;
        Manager address_manager; 
        uint StartedDate;

    }

    mapping(address => CDI[]) cdis;
    mapping(address => CDD[]) cdds;
    mapping(address => Stage[]) stages;
    mapping(address => Esclavage[]) esclaves;

    /*
    Afin d'avoir au moins 1/2 trucs fonctionnels
    A faire : CDD, esclavage
    */

    function addCDD( address_manager, address_company, address_employee, uint memory StartedDate, uint memory EndedDate, uint memory salary ) 
    public  {
        cdis[employee].push(CDD({
            Manager : address_manager,
            Employee : address_employee,
            Company : address_company,
            StartedDate : now,
            EndedDate : StartedDate + 1 years,
            salary : salary
        }));

        return true;
    }


    /*
        Function Signature
        Function Consultation
    */
}