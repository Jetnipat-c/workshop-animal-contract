import { SignerWithAddress } from '@nomiclabs/hardhat-ethers/signers'
import { deployToken } from '../scripts/shared/token'
import { parseEther } from 'ethers/lib/utils'
import { ethers } from 'hardhat'
import { expect } from 'chai'
import { Factory, Token } from '../typechain-types'
import { deployFactory } from '../scripts/deploy/Factory'

describe('Farm', function () {
  let rootAdmin: SignerWithAddress
  let customer: SignerWithAddress
  let usdt: Token
  let factory: Factory

  beforeEach(async () => {
    const signers = await ethers.getSigners()
    rootAdmin = signers[0]
    customer = signers[1]
    usdt = await deployToken('Tether USD', 'USDT')
    factory = await deployFactory()
  })
  describe('Deployment', function () {
    it('Mint token', async function () {
      const amount = parseEther('100')
      await usdt.mint(rootAdmin.address, amount)
      const rootAdminBalance = await usdt.balanceOf(rootAdmin.address)
      expect(amount).to.equal(rootAdminBalance)
    })

    it('Create food', async function () {
      const data = await factory.createFoodOrWater('coke', 100)
      console.log('data : ', await data.wait())
    })
  })
})
