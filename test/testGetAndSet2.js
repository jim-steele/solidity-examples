const GetAndSet2 = artifacts.require("./GetAndSet2.sol");

contract('GetAndSet2TestJavascript', function(accounts) {

	it("should be zero if unset", function() {

		return GetAndSet2.deployed().then(function(instance) {
			return instance.getStoredData.call(1);
		    }).then(function(value) {
			    assert.equal(value.valueOf(), 0, "Unset parameter was not zero");
			});
	    });

	it("should store the specified value", function() {
		var gns2Inst;
		var specifiedIdx = 0;
		var specifiedVal = 'howdy';

		return GetAndSet2.deployed().then(function(instance) {
			gns2Inst = instance;
			return gns2Inst.setStoredData(specifiedIdx, specifiedVal, {from: accounts[0]});
		    }).then(function() {
			    return gns2Inst.getStoredData.call(specifiedIdx);
			}).then(function(storedData) {
				assert.equal(storedData, specifiedVal, "Set parameter was not returned");
			    });
	    });

    });
