//
//  TweetDataModel.swift
//  TwitterApp
//
//  Created by Vijay Parmar on 01/11/23.
//

import Foundation

struct TweetDataModel{
    
    let id:String
    let userName:String
    let tweetText:String
    let userId:String
    let time:String
    let profilePic:String
    let retweetOrLikedBy:String
    let isRetweeted:Bool
    let isRetweetedBy:Bool
    let isLiked:Bool
    let isLikedBy: Bool
    let commentCount:Int
    let retweetCount:Int
    let likeCount:Int
    let media:String
    let mediaType:String
}
