import { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { deployToken } from "../scripts/shared/token";
import { parseEther } from "ethers/lib/utils";
import { MyToken } from "../typechain-types";
import { ethers } from "hardhat";
import { expect } from "chai";

describe("Token", function () {
  let rootAdmin: SignerWithAddress;
  let customer: SignerWithAddress;
  let usdt: MyToken;
  beforeEach(async () => {
    const signers = await ethers.getSigners();
    rootAdmin = signers[0];
    customer = signers[1];
    usdt = await deployToken("Tether USD", "USDT");
  });
  describe("Deployment", function () {
    it("Mint token", async function () {
      const amount = parseEther("100");
      await usdt.mint(rootAdmin.address, amount);
      const rootAdminBalance = await usdt.balanceOf(rootAdmin.address);
      expect(amount).to.equal(rootAdminBalance);
    });
  });
});
