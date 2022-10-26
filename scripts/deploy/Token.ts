import addressUtils from '../../utils/addressUtils'
import { deployKAP20Token, deployToken } from '../shared/token'
import hre, { ethers } from 'hardhat'
import { parseEther } from 'ethers/lib/utils'

export async function deployERC20Token() {
  const usdt = await deployToken('Tether USD', 'USDT')
  console.log('Deployed USDT at: ', usdt.address)

  await addressUtils.saveAddresses(hre.network.name, {
    USDT: usdt.address,
  })
}

export async function deploy_KAP20Token() {
  const addressList = await addressUtils.getAddressList(hre.network.name)
  const committee = addressList['Committee']
  const kyc = addressList['KYC']
  const acceptedKYCLevel = 0
  const initialMintToken = parseEther('1000000000').toString()
  const transferRouter = addressList['TransferRouter']
  const kusdt = await deployKAP20Token(
    'Bitkub-Peg KUSDT',
    'KUSDT',
    '18',
    kyc,
    committee,
    transferRouter,
    acceptedKYCLevel
  )
  console.log('Deployed KUSDT at: ', kusdt.address)

  await addressUtils.saveAddresses(hre.network.name, {
    KUSDT: kusdt.address,
  })
}
