pragma solidity >=0.4.21 <0.6.0;
import './Company.sol';
import './Contract.sol';

contract User  {

    string public name;
    string public email;
    string public role;
    Company public company;

}

contract Manager is User {
    // This contract inherits the `onlyOwner` modifier from
    // `owned` and applies it to the `close` function, which
    // causes that calls to `close` only have an effect if
    // they are made by the stored owner.
    address public address_manager;    

    constructor() public {

    }

    function setManager(address newManager) public {
        manager = newManager;
    }

    function getManager() public view returns (address) {
        return manager ;
    }
}

contract Employee is User {
    // This contract inherits the `onlyOwner` modifier from
    // `owned` and applies it to the `close` function, which
    // causes that calls to `close` only have an effect if
    // they are made by the stored owner.
    address public address_employee;    
    
    constructor() public {

    }

    function setEmployee(address newEmployee) public {
        employee = newEmployee;
    }

    function getEmployee() public view returns (address) {
        return employee ;
    }
}