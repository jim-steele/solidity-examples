var GetAndSet2 = artifacts.require("./GetAndSet2.sol");

contract('GetAndSet2TestAsync', async (accounts) => {

	it("should be zero if unset", async () => {
		let instance = await GetAndSet2.deployed();
		let value = await instance.getStoredData(1);
		assert.equal(value.valueOf(), 0, "Unset parameter was not zero");
	    });

	it("should store the specified value", async () => {
		var specifiedIdx = 0;
		var specifiedVal = 'howdy';

		let instance = await GetAndSet2.deployed();
		await instance.setStoredData(specifiedIdx, specifiedVal);
		let storedData = await instance.getStoredData(specifiedIdx);
		assert.equal(storedData, specifiedVal, "Set parameter was not returned");
	    });

    });
