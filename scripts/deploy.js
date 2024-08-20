const { ethers, upgrades } = require("hardhat");

async function main() {
    const CrudStorageV1 = await ethers.getContractFactory("CrudStorageV1");
    console.log("Deploying CrudStorageV1 with Proxy...");

    // Deploy the contract with a proxy
    const crudStorageProxy = await upgrades.deployProxy(CrudStorageV1, [], { initializer: 'initialize' });

    // Wait for the proxy contract to be deployed
    await crudStorageProxy.deployed(); // This is just to make sure deployment is complete

    // Log the proxy address
    console.log("CrudStorage deployed to:", crudStorageProxy.address);

    // Optionally check the contract instance
    const proxyInstance = await ethers.getContractAt("CrudStorageV1", crudStorageProxy.address);
    console.log("Proxy contract address:", proxyInstance.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
