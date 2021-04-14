pragma solidity >=0.4.2;

contract Election {
    // model a candidate
    // Create a struct Candidate with attributes
    // uint id
    // string name
    // uint voteCount
    struct Candidate {

    }

    // Read / write candidates
    // use the mapping function to map uint to a public array of Candidates
    // name the new array candidates

    // Store Candidates Count
    // Create a public uint for the number of Candidates Created
    // name the variable candidatesCount

    // Store accounts that have voted
    // use the mapping function to map addresses to boolean values to
    // determine if a voter has voted

    // create an event that indexes the _candidateId
    // name the even votedEvent
    event votedEvent (
    );

    // Write a constructor constructor() public 
    // This constructor is going to call addCandidate as many
    // times as you would like pass a string value to add
    // potential candidates

    constructor () public {

    }

    // Write the function to add a candidate to the candidates array
    function addCandidate (string memory _name) private {

    }

    // Write the function to cast a vote
    function vote(uint _candidateId) public {
        //require haven't voted before

        //require valid candidate

        //record that voter has voted

        //update candidate vote count

        // use the emit function to call votedEvent
        // pass the _candidateId as an argument

    } 
}