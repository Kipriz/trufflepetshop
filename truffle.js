module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 8545,
            network_id: "*", // Match any network id
            gas: 4600000 // add this gas parameter to make it deploy to testrpc (at least there)
        }
    },
    rpc: {
        host: "localhost",
        port: 8545
    }
};
