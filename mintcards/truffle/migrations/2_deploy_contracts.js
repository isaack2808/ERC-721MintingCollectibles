const ArtistsTradingCard = artifacts.require("./ArtistsTradingCard.sol");
const fs = require("mz/fs");

module.exports = deployer => {
	  deployer.deploy(ArtistsTradingCard).then(() =>
		      fs.writeFile(
			            "../contract/ArtistsTradingCard.json",
			            JSON.stringify({
					            address: ArtistsTradingCard.address,
					            abi: ArtistsTradingCard.toJSON().abi
					          })
			          )
		    );
};
