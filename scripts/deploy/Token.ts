import addressUtils from "../../utils/addressUtils";
import { deployToken } from "../shared/token";
import hre from "hardhat";

export async function deployERC20Token() {
  const usdt = await deployToken("Tether USD", "USDT");
  console.log("Deployed USDT at: ", usdt.address);

  await addressUtils.saveAddresses(hre.network.name, {
    USDT: usdt.address,
  });
}
