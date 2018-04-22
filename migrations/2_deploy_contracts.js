var getAndSet = artifacts.require("./GetAndSet.sol");
var getAndSet2 = artifacts.require("./GetAndSet2.sol");
var viz = artifacts.require("./Visibility.sol");

module.exports = function(deployer) {
    deployer.deploy(getAndSet);
    deployer.deploy(getAndSet2);
    deployer.deploy(viz);
};
