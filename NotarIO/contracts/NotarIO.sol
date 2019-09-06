pragma solidity >=0.4.21 <0.6.0;


/* Smart_Contract */
contract NotarIO  {

    struct Company{
        string name;
        string  siren;
        address  address_company;
        address  company_address ;
    }

    struct employee{
        string name ;
        address payable address_employee ;

    }
//mapping address employee
//clef adress user / tableau CDI
    
 
/*
contract Smart_NotarIO is NotarIO{
// Struct par type de contrat
*/
    struct CDI{
 
        uint StartedDate;
        uint EndedDate;
        uint salary ;
    }

    struct CDD {
        uint StartedDate;
        uint EndedDate;
        uint salary ;
    }

    struct Stage{
        uint StartedDate;
        uint EndedDate;
        uint salary ;
    }

    struct Esclavage{
        uint StartedDate;

    }

   mapping(address => employee[]) employees;

    //mapping(address => CDI[]) cdis;
  //mapping(address => Stage[]) stages;
    mapping(address => Esclavage[]) esclaves;

    /*
    Afin d'avoir au moins 1/2 trucs fonctionnels
    A faire : CDD, esclavage
    */
/*
    function slaveContract(type name) public {
        
    }
*/
    function addCDD( address manager, address company, address employee, uint StartedDate, uint EndedDate, uint salary )
    public  {
        cdds[company].push(CDD({
            manager : manager,
            employee : employee,
            company : company,
            StartedDate : block.timestamp,
            EndedDate : StartedDate,
            salary : salary
        }));
    }



    function getCDD() public pure returns (string memory) {
        return "cdd" ;
    }
   /* function getCDDs() public  returns (cdds) {
        return cdds ;
    }    
    /*
        Function Signature
        Function Consultation
    */
}

/* Document */
/*
contract Document_NotarIO is NotarIO{

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

