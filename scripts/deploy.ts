import { deployERC20Token } from "./deploy/Token";

async function main() {
  await deployERC20Token();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
