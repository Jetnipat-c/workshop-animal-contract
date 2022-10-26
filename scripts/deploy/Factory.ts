import addressUtils from '../../utils/addressUtils'
import hre, { ethers } from 'hardhat'
import { Factory__factory } from '../../typechain-types'

export async function deployFactory() {
  const [owner] = await ethers.getSigners()
  const Factory = (await ethers.getContractFactory('Factory')) as Factory__factory
  const factory = await Factory.deploy(owner.address, 'InitFarm')
  console.log('Deployed Factory at: ', factory.address)

  await addressUtils.saveAddresses(hre.network.name, {
    Factory: factory.address,
  })
  return factory
}
