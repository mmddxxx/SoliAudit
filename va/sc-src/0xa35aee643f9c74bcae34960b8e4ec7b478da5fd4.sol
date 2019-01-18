pragma solidity ^0.4.10;

contract addGenesisPairs {
    
address[] newParents;
address[] newChildren;

function addGenesisPairs()    {
    // Set elixor contract address
    elixor elixorContract=elixor(0x898bF39cd67658bd63577fB00A2A3571dAecbC53);
    
    // One guy used a coinbase address for the original airdrop.
    // He gets one more chance (0xb73b26494b1e8611BDb2da15f6837aef5fE86e70).
    
    newParents=[0xD975beD08052aB6CdF477ac3bFbC71df02fBF88A,
    0xf3fD7BC0Daf9a10AE578499e3B906a3D14a9A48A,
0x63A7931b63C779e40a05C3dAF668CB167BDd8156,
0xa76809d8d1E136c18d0E8F634D198FA3F3FC5434,
0xc4148485F67BA26C52e25dbE5026ba3C7ADF0148,
0x59b79eA46545d70aC206837A2A76EddD883B232E,
0x39fD3325bB63C955a40365881Dc1f61e1068c74c,
0xC811a1b588F5CB422Aeb0B5Fb5F5DCb9e95D2beE,
0xD3F94137223777f63A58098925B7C3282179Db41,
0x222a685B57BE4C516D167A81fc2fB1F574AB91BE,
0x4e4449b9e2d45582D0a65Fc64eBe733EF5ae9A65,
0x653855aa8B9aA468Dec9e5F506bF58f30989F48C,
0x066da06DcA97EE33e738276bd6BFb25D6138e62e,
0xa5781395C80419C351B432e5E42e5c0d7b0dDb1B,
0x6c130Ea9c93422d3AC6606DF2d28eB7D893dd929,
0x8771635633793646339b3d4BCBBafFF72FFbC283,
0x7F338a773B9Ec4CC18A7f05F5EaB398dcdEE4D68,
0x13e2A8b1495Eef340fE6eeCc0Db41ADB5009d603,
0xBc790E6AC765d57324ad6156a29Ba7a99baCEC32,
0xeC133E31189E18f901c67711a9cC36B43AD31402,
0x72AfaE806D7EBA9118dA88c649d0Cd3eaA39b1F9,
0x925C04a9E151880500Da507c1DE88F12D4339728,
0x03b8ac4b13c1a2a622D95a2cbDd4708A58141f35,
0x166e9E207b79872280A33B6D4bd1B1b591602006,
0xe8323A00E145BEf5e0F88AA2edD549ADf2F45E77,
0xAC6Cc208A301CD064fE5998894B84DFB5A9F3B24
    ];
    
    
    
    newChildren=[0xb73b26494b1e8611BDb2da15f6837aef5fE86e70,
    0x9820B71cebCdA3Bec00572B1C24Dd9b546898AF8,
0x783382e0a9085B88D235dB784Eb82F4feEb8b6D0,
0x311B69A41aB69B6D06560ee3D99835a56615BAC6,
0xFF073D2139c6F87f1c977ad2B631CC6f1fC6efe9,
0x6299fE619d1064272afe68816ae040B62FcF53be,
0xadbf621160F66402EF383Bc637CC929e6793a65b,
0x6583b477514397DB367a61318Cbd65A4C3321f7A,
0xBe9dfdB128273C5F544abD85a0b999ee66056859,
0x0A867c8E6f887928D7e4947bdA4728b92Cb7df82,
0x6c056B2A676Af5640E20d63988db6aB790fB6b73,
0xaea936dc892D8e940D7Aa8819DA18400fe49b408,
0xe0Dd348334B580F00626eb8180372736b323B657,
0xE287BF302AC2de36CFad9953d6DFE8be615b655c,
0xb5B4A472Ed28e2d039dE0DAc95bbf9d9c01131cb,
0x9ff9B4508E30a5b7De41f021fC9634dF1f7D5c87,
0xC5648d45ce545F0DE09D18B2Ac4191631d4670e5,
0xd2ca1CBde6912206c65232a48Ee15D4CA2a2a1Ec,
0xcc2ca23B8B10fFA22070738a1607bbe1424Fc20d,
0x8ef5Afd77A6b46E249F7Ec86a966000EEf3C22c3,
0x72b2c596184161841F7597de3733679E941362d5,
0xAf5f896DEad8A01a5e36e0789a541954acd9775f,
0xB2338334279a2666b8c25d802AbEd2C52986D912,
0x9E3123B0922Ab094e0de33cCec8532323edC17b6,
0xf0b3A4eacc8D53F22021E1AA8e0dA7CAc55Aed42,
0xb69342F141a061Fa90deb2D7E69b8dc5b13d7AA4
    ];
    
    elixorContract.importGenesisPairs(newParents,newChildren);
 
}

}

contract elixor {
    function importGenesisPairs(address[] newParents,address[] newChildren) public;
}