var greeterCompiled = {
  "contracts": {
    "hello.sol:greeter": {
      "abi": "[{\"constant\":false,\"inputs\":[],\"name\":\"kill\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"constant\":true,\"inputs\":[],\"name\":\"greet\",\"outputs\":[{\"name\":\"\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"name\":\"_greeting\",\"type\":\"string\"}],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]",
      "bin": "6060604052341561000f57600080fd5b6040516103203803806103208339810160405280805160008054600160a060020a03191633600160a060020a03161790559190910190506001818051610059929160200190610060565b50506100fb565b828054600181600116156101000203166002900490600052602060002090601f016020900481019282601f106100a157805160ff19168380011785556100ce565b828001600101855582156100ce579182015b828111156100ce5782518255916020019190600101906100b3565b506100da9291506100de565b5090565b6100f891905b808211156100da57600081556001016100e4565b90565b6102168061010a6000396000f30060606040526004361061004b5763ffffffff7c010000000000000000000000000000000000000000000000000000000060003504166341c0e1b58114610050578063cfae321714610065575b600080fd5b341561005b57600080fd5b6100636100ef565b005b341561007057600080fd5b610078610130565b60405160208082528190810183818151815260200191508051906020019080838360005b838110156100b457808201518382015260200161009c565b50505050905090810190601f1680156100e15780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b6000543373ffffffffffffffffffffffffffffffffffffffff9081169116141561012e5760005473ffffffffffffffffffffffffffffffffffffffff16ff5b565b6101386101d8565b60018054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156101ce5780601f106101a3576101008083540402835291602001916101ce565b820191906000526020600020905b8154815290600101906020018083116101b157829003601f168201915b5050505050905090565b602060405190810160405260008152905600a165627a7a723058201c7db0d9ce910c3fc13c9b53810ae470ffaa223ce55ba2c7fa38632d4cfc95990029"
    },
    "hello.sol:mortal": {
      "abi": "[{\"constant\":false,\"inputs\":[],\"name\":\"kill\",\"outputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"payable\":false,\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"}]",
      "bin": "6060604052341561000f57600080fd5b60008054600160a060020a033316600160a060020a031990911617905560c18061003a6000396000f300606060405260043610603e5763ffffffff7c010000000000000000000000000000000000000000000000000000000060003504166341c0e1b581146043575b600080fd5b3415604d57600080fd5b60536055565b005b6000543373ffffffffffffffffffffffffffffffffffffffff9081169116141560935760005473ffffffffffffffffffffffffffffffffffffffff16ff5b5600a165627a7a7230582054493767d135db9d9836d707de81d334dc91577193dd7994024122efc031ffca0029"
    }
  },
  "version": "0.4.19+commit.c4cbbb05.Linux.g++"
}

var _greeting = "Hello, Universal!";
var _sol_abi = greeterCompiled.contracts["hello.sol:greeter"].abi;
var _sol_bin = greeterCompiled.contracts["hello.sol:greeter"].bin;
console.log(_sol_abi)
var _sol_account = eth.accounts[0];
var _sol_passwd = "lablab";


//unlock
personal.unlockAccount(_sol_account, _sol_passwd);

//var greeterContract = web3.eth.contract(greeterCompiled.greeter.info.abiDefinition);
var greeterContract = web3.eth.contract(JSON.parse(_sol_abi));

var greeter = greeterContract.new(_greeting,{from:_sol_account, data: "0x" + _sol_bin, gas: 300000}, function(e, contract){
    if(!e) {

        if(!contract.address) {
            console.log("Contract transaction send: TransactionHash: " + contract.transactionHash + " waiting to be mined...");

        } else {
            console.log("Contract mined! Address: " + contract.address);
            console.log(contract);
        }
    }
})

