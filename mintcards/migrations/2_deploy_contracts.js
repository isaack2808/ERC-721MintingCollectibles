const Banksy = artifacts.require("./Banksy.sol");
const fs = require("mz/fs");

module.exports = deployer => {
	  deployer.deploy(Banksy).then(() =>
		      fs.writeFile(
			            "../contract/Banksy.json",
			            JSON.stringify({
					            address: Banksy.address,
					            abi: Banksy.toJSON().abi
					          })
			          )
		    );
};
