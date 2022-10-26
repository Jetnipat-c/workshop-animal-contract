import { ethers } from 'hardhat'
import { KAP20__factory, KToken__factory, Token__factory } from '../../typechain-types'

export const deployToken = async (name: string, symbol: string) => {
  const Token = (await ethers.getContractFactory('Token')) as Token__factory
  return Token.deploy(name, symbol)
}

export const deployKAP20Token = async (
  name: string,
  symbol: string,
  decimals: string,
  kyc: string,
  committee: string,
  transferRouter: string,
  acceptedKYCLevel: number
) => {
  const KAP20Token = (await ethers.getContractFactory('KToken')) as KToken__factory

  return KAP20Token.deploy(name, symbol, decimals, kyc, committee, transferRouter, acceptedKYCLevel)
}
