module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 8545,
            network_id: "*", // Match any network id
            gas: 4600000
        }
    },
    rpc: {
        host: "localhost",
        port: 8545
    }
};
