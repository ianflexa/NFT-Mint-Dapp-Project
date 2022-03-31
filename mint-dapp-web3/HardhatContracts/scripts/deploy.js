const main = async () => {
    
    const rea1Project = await hre.ethers.getContractFactory('TheRea1Final');
    const contract = await rea1Project.deploy(100, 1);
    await contract.deployed();
    console.log("Contract Address: ", contract.address);
};

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
};

runMain();