pragma solidity >=0.4.21 <0.6.0;
import "../lib/strings.sol";

contract LinkedOut {
    using strings for *;

    struct Project {
        address Employee;
        address AddBy;
        uint ProjectId;
        string Organization;
        string Label;
        uint StartedDate;
        uint EndedDate;
        bool isAccepted;
    }

    struct Formation {
        address Student;
        address AddBy;
        uint FormationId;
        string Organization;
        string Label;
        uint DeliveryDate;
        bool isAccepted;
    }

    struct Skill {
        address Employee;
        address AddBy;
        uint SkillId;
        string Project;
        string Organization;
        string Label;
        bool isAccepted;
    }

    mapping(address => Formation[]) formations;
    mapping(address => Skill[]) skills;
    mapping(address => Project[]) projects;


    modifier checkValidity(address userToModify, uint itemIdToModify, string memory itemType ) {
        bool isOK = false;

        if (itemType.toSlice().equals('FORMATION'.toSlice())) {
            isOK = formations[userToModify][itemIdToModify].FormationId != itemIdToModify;

        }else if (itemType.toSlice().equals('PROJECT'.toSlice())) {
            isOK = projects[userToModify][itemIdToModify].ProjectId != itemIdToModify;

        }else if (itemType.toSlice().equals('SKILL'.toSlice())) {
            isOK = skills[userToModify][itemIdToModify].SkillId != itemIdToModify;
        }

        require(isOK);
        _;
    }

    function addFormation(address student, uint formationId, string memory organization, string memory label, uint deliveryDate )
    public checkValidity(student,formationId,'FORMATION') returns (bool) {
        formations[student].push(Formation({
            Student: student,
            AddBy: msg.sender,
            FormationId: formationId,
            Organization: organization,
            Label: label,
            DeliveryDate: deliveryDate,
            isAccepted: false
        }));

        return true;
    }

    function addProject(address employee, uint projectId, string memory organization, string memory label, uint startedDate, uint endedDate)
    public checkValidity(employee,projectId,'PROJECT') returns (bool) {
        projects[employee].push(Project({
            Employee: employee,
            AddBy: msg.sender,
            ProjectId: projectId,
            Organization: organization,
            Label: label,
            StartedDate: startedDate,
            EndedDate: endedDate,
            isAccepted: false
        }));
        return true;
    }

    function addSkill(address employee, uint skillId, string memory project, string memory organization, string memory label)
    public checkValidity(employee,skillId,'SKILL') returns (bool) {
        skills[employee].push(Skill({
            Employee: employee,
            AddBy: msg.sender,
            SkillId: skillId,
            Project: project,
            Organization: organization,
            Label: label,
            isAccepted: false
        }));
        return true;
    }


    function getNumberFormationByUser(address userAddress) public view returns (uint8) {
        return formations[userAddress].length();
    }

    function getFormationByUser(address userAddress, uint8 iteration) public view returns (Formation) {
        return formations[userAddress][iteration];
    }

    // function acceptUpdate (bool isAccepted, uint id, string memory itemType) public returns (bool) {

    //     return true;
    // }
}