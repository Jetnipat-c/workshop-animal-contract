import { ethers } from "hardhat";
import { MyToken__factory } from "../../typechain-types";

export const deployToken = async (name: string, symbol: string) => {
  const Token = (await ethers.getContractFactory("MyToken")) as MyToken__factory;
  return Token.deploy(name, symbol);
};
