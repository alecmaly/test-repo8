// SPDX-License-Identifier: BUSL-1.1

// import { FullMath } from "FullMath.sol";

pragma solidity ^0.8.21;

// import "./test2.sol";

contract ERC20 {
    string private _name;
    string private _symbol;
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }
    
}


interface dd { 
    function getMappingKeyAndParentOf2(uint256) external returns (bool found, bytes32 key, bytes32 parent);
}

abstract contract meowmix is dd {
    uint GGH = 99;

    struct Goofer {
        uint jj;
        uint[] ps;
    }

    function arg(bytes[] calldata gts, Goofer memory g) external {

    }

    function getMappingKeyAndParentOf(Goofer memory sdf)
        external
        returns (bool found, bytes32 key, bytes32 parent) {
            require(GGH == 4, "");
        }

        function _mint(address, uint256) internal {

        }
}

struct VaultUser {
        uint88 ethEscrowed;
        uint88 dittoMatchedShares;
        uint80 dittoReward;
    }


struct AppStorage {
    address admin;
    address ownerCandidate;
    address baseOracle;
    uint24 flaggerIdCounter; // UNUSED: flaggerIdCounter deprecated
    uint40 tokenIdCounter; //NFT - As of 2023, Ethereum had ~2B total tx. Uint40 max value is 1T, which is more than enough for NFTs
    uint8 reentrantStatus;
    mapping(address deth => uint256 vault) dethVault; // UNUSED: depositDeth/withdrawDeth removed
    // Bridge
    // Vault
    mapping(uint256 vault => address[]) vaultBridges;

    // ERC721 - METADATA STORAGE/LOGIC
    string name;
    string symbol;
    mapping(uint256 vault => mapping(address account => VaultUser)) vaultUser;
}



function appStorage() pure returns (AppStorage storage s) {
    // solhint-disable-next-line no-inline-assembly
    assembly {
        s.slot := 0
    }
}


interface pewpew {
    function gsg(uint256 ad) external;
}

abstract contract meowmix2 is meowmix, ERC20("Zeta", "ZETA") {

    uint256 internal constant MAX_DEADLINE = 200;
    address public constant FUNGIBLE_MODULE_ADDRESS = 0x735b14BB79463307AAcBED86DAf3322B1e6226aB; // LOOKUP_ADDR > 
    address public constant FUNGIBLE_MODULE_ADDRESS2 = 0x735b14BB79463307AAcBED86DAf3322B1e6226aB; // LOOKUP_ADDR > 
    uint256[3] private __gap; // Storage gap


    constructor(address creator, uint256 initialSupply) {
        _mint(creator, initialSupply * (10 ** uint256(decimals())));
    }
    
    function run() external returns (uint256[] memory arr, uint256[] memory ar3) {
        
        arr = new uint256[](3);
        arr[0] = 3;

        // return arr;
    }


    struct mys { 
        
        uint256 a;
    }




    mapping (address => mys) public mymap;

    uint256 public x;    
    function unused(uint gf, address addr) internal returns(uint256) {

        for (uint256 i = 0; i < 3; i++) {
            // do something
            x = 3;

            x = 3;
            x = 3;
            x = 3;
            x = 3;
            x = 3;
        }
        
        AppStorage storage s = appStorage();

        VaultUser storage VaultUser = s.vaultUser[23][msg.sender];

        VaultUser.dittoReward -= 3;
        
        pewpew(address(0)).gsg(32 - gf);
        gf = x;
        return block.timestamp;
    }

    modifier testmod() {
        _;        
    }

    function newFunc(uint256 i) testmod external returns (uint256) {
        return i;
    }

    function decimals() internal returns(uint256) {
        x = block.chainid;
        return block.timestamp;
    }
 
    // function getMappingKeyAndParentOf2()
    //     internal virtual override
    //     returns (bool found, bytes32 key, bytes32 parent) {
    //         require(GGH == 47, "");
    //     }
}


contract NewContract {
    uint256 public number;

    struct meowmix {
        uint256 x;
        // mapping(address =>  uint256) balance;
    }
    mapping(address =>  meowmix) pp;
    meowmix m;
    uint256 p;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment(address addr) public returns (uint256, meowmix memory) {
        number++;
        return (4, m);
    }

    function increment2(meowmix memory m) public {
        number++;
    }

    function gogo() private {
         uint256 h = 3;
         p = 32;
    }

    function purefunc() external pure {
    }

    function viewfunc() external view {
    }
    
    function hmm() external {
        gogo();
    }
}

abstract contract testContract is meowmix2 {
    // total amount collected during minting from collections

    uint256 shared_var = 5;


    function a() external returns (uint256) {
        b();
        require(shared_var == 3);
        shared_var = 12;
        return shared_var * 6;
    }

    function b() internal {
        c();
        d();
        _unqueuedUnauctionedDebt(3);
        hehe(3);
    }

    function c() internal {
        d();
    }

    function d() internal {
    }


    function _unqueuedUnauctionedDebt(uint256 _debtBalance) internal view returns (uint256 __unqueuedUnauctionedDebt) {
        return (_debtBalance - 22) - shared_var;
    }

    function hehe(uint256 x) internal {
        shared_var = x;
    }

    struct UserStake {
        uint256 lastGaugeLoss;
        uint256 stakeTime;
    }

    mapping(address => mapping(address => UserStake)) internal _stakes;
    
    function getRewards(
        address user,
        address term
    )
        public
        returns (
            uint256 lastGaugeLoss, // GuildToken.lastGaugeLoss(term)
            UserStake memory userStake, // stake state after execution of getRewards()
            bool slashed // true if the user has been slashed
        )
    {

        dd d = dd(user);

        uint256 price0 = 3;
        uint256 price1 = 4;
        uint256 virtualPrice = 5;
        uint256 WAD;
        uint256 price;


        uint256 maxPrice = price0 < price1 ? price1 : price0;
        price = (maxPrice * virtualPrice) / WAD;


        d.getMappingKeyAndParentOf2(price);
        // for (uint256 i = 0; i < 3; i++) {
        //     // do something
        //     x = 3;
        // }


        uint256 _rebasingSharePrice;
        // uint256 _rebasingSharePrice = (1 == 1 ||
        //     2 == 1)
        //     ? 3
        //     : 0; // only SLOAD if at least one address is rebasing

        if (_rebasingSharePrice > 0) {}

        lastGaugeLoss = 23;
        // lastGaugeLoss = GuildToken(guild).lastGaugeLoss(term);
        if (lastGaugeLoss > uint256(userStake.lastGaugeLoss)) {
            slashed = true;
            lastGaugeLoss = 24;
            for (uint256 i = 0; i < 3; i++) {
                // do something
                x = 3;
            } 
        }

        try d.getMappingKeyAndParentOf2(3) returns (bool found, bytes32 key, bytes32 parent) {
            // do something
            x = 3;
        } catch {
            // do something
            x = 3;
        }

        userStake = _stakes[user][term];
        if (userStake.stakeTime == 0)
            return (lastGaugeLoss, userStake, slashed);


    }


    struct Swap {
        bytes data;
        bytes4 functionSelector;
    }
    function _goo(bytes calldata data) internal {

            if (!true) {
                Swap memory swapData = abi.decode(
                    data,
                    (Swap)
                );
            }
            
            require(GGH == 74, "");

            shared_var = 8;
            unchecked {
                GGH++;
            }

            GGH = 32;

            assembly {
                mstore(0,0)
            }
    }


    
}
