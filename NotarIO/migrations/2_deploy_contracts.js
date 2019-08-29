const User = artifacts.require("User");
const Contract = artifacts.require("Contract");
const Entreprise = artifacts.require("Entreprise");

module.exports = function(deployer) {
  deployer.deploy(Entreprise, /*  */);
  deployer.deploy(User, /*  */);
  deployer.deploy(Contract, /*  */);

};