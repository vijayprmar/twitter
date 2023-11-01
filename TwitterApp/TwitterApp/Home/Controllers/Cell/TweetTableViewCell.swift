//
//  TweetTableViewCell.swift
//  TwitterApp
//
//  Created by Vijay Parmar on 31/10/23.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTweetText: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblUserId: UILabel!
    @IBOutlet weak var viewBlueTick: UIView!
    @IBOutlet weak var lblUserName: UILabel!
    @IBOutlet weak var imgProfilePic: UIImageView!
    @IBOutlet weak var btnLikedAndRetweet: UIButton!
    @IBOutlet weak var btnComment: UIButton!
    @IBOutlet weak var btnRetweet: UIButton!
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var viewMedia: UIView!
    @IBOutlet weak var imgMedia: UIImageView!
    
    var viewModel = TweetCellViewModel(tweetData: nil)
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    //MARK: - Set Data
    func setData(){
        
        imgProfilePic.image = UIImage(named: viewModel.tweetData?.profilePic ?? "")
        lblTweetText.text = viewModel.tweetData?.tweetText
        lblUserName.text = viewModel.tweetData?.userName
        lblUserId.text = viewModel.tweetData?.userId
        lblTime.text = "·\(viewModel.tweetData?.time ?? "")"
        btnComment.setTitle(" \(viewModel.tweetData?.commentCount ?? 0)", for: .normal)
        btnRetweet.setTitle(" \(viewModel.tweetData?.retweetCount ?? 0)", for: .normal)
        btnLike.setTitle(" \(viewModel.tweetData?.likeCount ?? 0)", for: .normal)
        
        if let retweeted = viewModel.tweetData?.isRetweeted,retweeted{
            btnLikedAndRetweet.setImage(UIImage(named: "ic_retwetted"), for: .normal)
            btnLikedAndRetweet.setTitle(" \(viewModel.tweetData?.retweetOrLikedBy ?? "") Retweeted", for: .normal)
        }
        
        if let liked = viewModel.tweetData?.isLiked,liked{
            btnLikedAndRetweet.setImage(UIImage(named: "ic_like_gray"), for: .normal)
            btnLikedAndRetweet.setTitle(" \(viewModel.tweetData?.retweetOrLikedBy ?? "") Liked", for: .normal)
        }
        
        if viewModel.tweetData?.media != ""{
            viewMedia.isHidden = false
            imgMedia.image = UIImage(named:viewModel.tweetData?.media ?? "")
        }else{
            viewMedia.isHidden = true
        }
    }
}



