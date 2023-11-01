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
    
    @IBOutlet weak var collectionMedia: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
