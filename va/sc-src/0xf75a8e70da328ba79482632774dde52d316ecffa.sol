pragma solidity ^0.4.18;

/// @title User Comments
/// @author Mark Beylin <<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8ce1edfee7a2eee9f5e0e5e2ccefe3e2ffe9e2fff5ffa2e2e9f8">[email protected]</a>>

contract UserComments {
    event CommentAdded(string _comment, address _from, address _to, uint _time);

    struct Comment{
      string comment;
      address from;
      address to;
      bool aboutBounty;
      uint bountyId;
      uint time;
    }

    Comment[] public comments;

    modifier isValidCommentIndex(uint i){
      require (i < comments.length);
      _;
    }

    function addComment(string _comment, address _to, bool _aboutBounty, uint _bountyId)
    public
    {
      if (_aboutBounty){
        comments.push(Comment(_comment, msg.sender, address(0), _aboutBounty, _bountyId, block.timestamp));
      } else {
        comments.push(Comment(_comment, msg.sender, _to, _aboutBounty, _bountyId, block.timestamp));
      }
      CommentAdded(_comment, msg.sender, _to, block.timestamp);
    }

    function numComments()
    public
    constant
    returns (uint){
      return comments.length;
    }

    function getComment(uint _commentId)
    isValidCommentIndex(_commentId)
    public
    constant
    returns (string, address, address, bool, uint, uint){
      return (comments[_commentId].comment,
              comments[_commentId].from,
              comments[_commentId].to,
              comments[_commentId].aboutBounty,
              comments[_commentId].bountyId,
              comments[_commentId].time);
    }
}