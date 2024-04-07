
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
