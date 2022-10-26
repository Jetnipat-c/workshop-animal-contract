// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.16;

contract Committee {
    address public committee;

    event CommitteeSet(
        address indexed oldCommittee,
        address indexed newCommittee,
        address indexed caller
    );

    modifier onlyCommittee() {
        require(
            msg.sender == committee,
            "Committee: restricted only committee"
        );
        _;
    }

    function setCommittee(address _committee) public onlyCommittee {
        emit CommitteeSet(committee, _committee, msg.sender);
        committee = _committee;
    }
}
