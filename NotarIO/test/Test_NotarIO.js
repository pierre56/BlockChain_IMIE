const NotarIO = artifacts.require("NotarIO");


contract("CDD test", async accounts => {
  it("CDD account", async () => {
    let instance = await NotarIO.deployed();
    let balance = await instance.addCDD( accounts[0], accounts[1], accounts[2], 45, 50, 1000,  {from : accounts[0]}) 
    console.log(balance) // = cdd
    assert.equal(balance =='cdd');
  });
});
