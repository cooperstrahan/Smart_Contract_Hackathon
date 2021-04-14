// A good reference for this is in 1_initial_migration.js

// create variable election by using artifacts require the 
// Election solidity contract
var Election = artifacts.require("./Election.sol");

// with module exports function deploy the Election contract

module.exports = function(deployer) {
    deployer.deploy(Election);
};