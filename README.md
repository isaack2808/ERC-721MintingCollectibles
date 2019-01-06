# ERC-721MintingCollectibles

Simple ERC Minting for 721.  Add's sequential minting.

You will need Google Storage Object API in Json format.

Local Server (apache)

Infura API key

Metamask Ethereum wallet

This has been used for Artiststradingcard.com to mint collectible images and information of art onto the blockchain.

Can be used to reference documentation as long as their is an api involved.

Instructions:

Clone api.

Add Infura key and seed phrase to metamask account to .env folder

cd truffle

add wallet address to truffle.js

cd ..

in mintcards directory

npm install --save puppeteer

cd Contract

rm ArtistsTradingCard.json

cd Truffle

rm -r build     (these last two art the artifacts that you get when you successfully deploy.  I included them so that you know what they should look like)...

inside truffle directory type:

truffle migrate --network rinkeby

If successful you will get a contract address.  Put that into index.js inside mintcard directory.  Make sure your server is started.  

Go to local host.  Make sure your signed into metamask account and it was same account to deploy contrract.

Start minting.

Done by Isaac Kenley 2019 ikenley1977@gmail.com

donations in eth:  0x80243DDA8007fa069a0Ca4ABf44A6F522A7774Ef
