import { deployFactory } from './deploy/Factory'
import { deployERC20Token, deploy_KAP20Token } from './deploy/Token'

async function main() {
  // await deployERC20Token()
  await deploy_KAP20Token()
  // await deployFactory()
}

main().catch((error) => {
  console.error(error)
  process.exitCode = 1
})
