pragma solidity >=0.4.2;

contract Election {
    // model a candidate
    // Create a struct Candidate with attributes
    // uint id
    // string name
    // uint voteCount
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Read / write candidates
    // use the mapping function to map uint to a public array of Candidates
    // name the new array candidates
    mapping(uint => Candidate) public candidates;

    // Store Candidates Count
    // Create a public uint for the number of Candidates Created
    // name the variable candidatesCount
    uint public candidatesCount;

    // Store accounts that have voted
    // use the mapping function to map addresses to boolean values to
    // determine if a voter has voted
    mapping(address => bool) public voters;

    // create an event that indexes the _candidateId
    // name the even votedEvent
    event votedEvent (
        uint indexed _candidateId
    );

    // Write a constructor constructor() public 
    // This constructor is going to call addCandidate as many
    // times as you would like pass a string value to add
    // potential candidates

    constructor () public {
        addCandidate("John Doe");
        addCandidate("John Deer");
        addCandidate("John Hobbes");
    }

    // Write the function to add a candidate to the candidates array
    function addCandidate (string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // Write the function to cast a vote
    function vote(uint _candidateId) public {
        //require haven't voted before
        require(!voters[msg.sender]);

        //require valid candidate
        require(_candidateId > 0 && _candidateId <= candidatesCount);

        //record that voter has voted
        voters[msg.sender] = true;

        //update candidate vote count
        candidates[_candidateId].voteCount++;

        // use the emit function to call votedEvent
        // pass the _candidateId as an argument
        emit votedEvent(_candidateId);

    } 
}