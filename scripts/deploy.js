async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contracts with the account:", deployer.address);

    const CrudStorage = await ethers.getContractFactory("CrudStorage");
    const crudStorage = await CrudStorage.deploy();

    console.log("CrudStorage deployed to:", crudStorage.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
