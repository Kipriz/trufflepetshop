Completed Truffle's PetShop tutorial with Truffle 4.

The original tutorial does not work at the end because Solidity (or web3) needs that getAdopters() methods to have at 1 least 1 argument.
It looks to be connected to the fact that getAdopters() methods return an array not a primitive. 
After following the original tutorial I gor 'Invalid number of arguments' error in browser's log.

How to run and play.
* install testrpc
* run testrpc:
`
testrpc -m "candy maple cake sugar pudding cream honey rich smooth crumble sweet treat"`
* `truffle console` should connect to the running testrpc because of truffle.js config (see rpc, network and gas options)
* inside truffle console: `migrate` or `migrate --reset --compile-all`
* in other console: `npm run dev` to start the application
* install MetaMask for Chrome
* It should work

Important notices:
* MetaMask looks not to work properly with `truffle develop` net. That's why it is necessary to use *testprc*
* If MetaMask cannot process transactions, try to reconnect to private net: choose rinkeby or ropsten, then back to localhost:8545
