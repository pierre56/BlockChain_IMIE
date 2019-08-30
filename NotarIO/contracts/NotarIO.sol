pragma solidity >=0.4.21 <0.6.0;

/*
contract Contract {
    /*
    Company public company;
    Employee public employee;
    Manager public manager;
*/
//}

/* Document */
/*
contract Document is Contract{

    string  ipfsHash  ;        // IPFS hash
    string title;           // title
    uint256 uploadedOn;     // Uploaded timestamp
    string path_miniature;  // Path du chemin des miniatures

/*
    constructor(Employee, Manager, Company, string memory ipfsHash, string memory title, uint256 memory uploadedOn) public {
    }
*/
/*
    function CreateDocument(address employee, address manager, Company company, string ipfsHash, string title, uint256 uploadedOn, string path_miniature) public {
    }
*/
    /*
        Function IPFS => non, utilisation du service IPFS global
        Function Signature => 
        Function Consultation => 
    */


//}

/* Smart_Contract */
contract NotarIO  {

/* Struct par type de contrat 
mapping address employee
clef adress user / tableau CDI
*/

/*
    struct CDI{
        Company address_company; 
        Employee address_employee;
        Manager address_manager;

        uint StartedDate;
        uint EndedDate;

        uint salary ;
    }
    */
    struct CDD {
        /*
        Company company; 
        Employee employee;
        Manager manager;
        */
        address company;
        address manager;
        address employee;
        uint StartedDate;
        uint EndedDate;
        uint salary ;
    }
    struct Company{
        string  siren;
        address  address_company;
    }
    /*
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
*/
    //mapping(address => CDI[]) cdis;
    mapping(address => CDD[]) cdds;
    mapping(address => Company) companies;
  /*  mapping(address => Stage[]) stages;
    mapping(address => Esclavage[]) esclaves;
*/
    /*
    Afin d'avoir au moins 1/2 trucs fonctionnels
    A faire : CDD, esclavage
    */

    function addCDD( address manager, address company, address employee, uint StartedDate, uint EndedDate, uint salary ) 
    public  {
        cdds[company].push(CDD({
            manager : manager,
            employee : employee,
            company : company,
            StartedDate : now,
            EndedDate : StartedDate ,
            salary : salary
        }));
    }

    function getCDD() public pure returns (string memory) {
        return "cdd" ;
    }
    
    
    /*
        Function Signature
        Function Consultation
    */
}