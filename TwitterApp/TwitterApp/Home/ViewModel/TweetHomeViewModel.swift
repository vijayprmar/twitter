//
//  TweetHomeViewModel.swift
//  TwitterApp
//
//  Created by Vijay Parmar on 01/11/23.
//

import Foundation

class TweetHomeViewModel{
    
    var arrTweetData:[TweetDataModel] = []
    
    init() {
        arrTweetData = self.getData()
    }
    
    func numberOfRowsInSection(_ section:Int)-> Int{
        return self.arrTweetData.count
    }
    
    func tweetData(_ at :Int)-> TweetDataModel{
        return self.arrTweetData[at]
    }
    
    func getData()->[TweetDataModel]{
    
        let tweetData = [
            
            TweetDataModel(id: UUID().uuidString, userName: "Andrew Parker", tweetText: "Y’all ready for this next post?", userId: "@maxjacob", time: "3h", profilePic: "img_maximillian", retweetOrLikedBy: "Zack John", isRetweeted: false, isRetweetedBy: false, isLiked: false, isLikedBy: true, commentCount: 46, retweetCount: 7, likeCount: 363,media:"test", mediaType: "png"),
            
            TweetDataModel(id: UUID().uuidString, userName: "Martha Craig", tweetText: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", userId: "@craig_love", time: "12h", profilePic: "img_martha", retweetOrLikedBy: "Zack John and Kieron Doston", isRetweeted: false, isRetweetedBy: false, isLiked: false, isLikedBy: true, commentCount: 28, retweetCount: 5, likeCount: 321, media: "", mediaType: ""),
            
            TweetDataModel(id: UUID().uuidString, userName: "Tabitha Potter", tweetText: "Kobe’s passing is really sticking w/ me in a way I didn’t expect.He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.But the end can happen for anyone at any time, & I can’t help but think of anything else lately.", userId: "@miss_potter", time: "12h", profilePic: "img_tabitha", retweetOrLikedBy: "Kieron Doston", isRetweeted: false, isRetweetedBy: true, isLiked: false, isLikedBy: false, commentCount: 7, retweetCount: 15, likeCount: 744, media: "test", mediaType: "png"),
        
            
            TweetDataModel(id: UUID().uuidString, userName: "Karenne", tweetText: "Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman.", userId: "@miss_potter", time: "12h", profilePic: "img_krenne", retweetOrLikedBy: "Kieron Doston", isRetweeted: false, isRetweetedBy: true, isLiked: false, isLikedBy: false, commentCount: 1906, retweetCount: 1245, likeCount: 7444, media:"" , mediaType: ""),
            
            TweetDataModel(id: UUID().uuidString, userName: "Andrew Parker", tweetText: "Y’all ready for this next post?", userId: "@maxjacob", time: "3h", profilePic: "img_maximillian", retweetOrLikedBy: "Zack John", isRetweeted: false, isRetweetedBy: false, isLiked: false, isLikedBy: true, commentCount: 46, retweetCount: 7, likeCount: 363,media:"test", mediaType: "png"),
            
            TweetDataModel(id: UUID().uuidString, userName: "Martha Craig", tweetText: "UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou", userId: "@craig_love", time: "12h", profilePic: "img_maximillian", retweetOrLikedBy: "Zack John and Kieron Doston", isRetweeted: false, isRetweetedBy: false, isLiked: false, isLikedBy: true, commentCount: 28, retweetCount: 5, likeCount: 321, media: "", mediaType: ""),
            
            TweetDataModel(id: UUID().uuidString, userName: "Tabitha Potter", tweetText: "Kobe’s passing is really sticking w/ me in a way I didn’t expect.He was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.But the end can happen for anyone at any time, & I can’t help but think of anything else lately.", userId: "@miss_potter", time: "12h", profilePic: "img_tabitha", retweetOrLikedBy: "Kieron Doston", isRetweeted: false, isRetweetedBy: true, isLiked: false, isLikedBy: false, commentCount: 7, retweetCount: 15, likeCount: 744, media: "test", mediaType: "png"),
        
            
            TweetDataModel(id: UUID().uuidString, userName: "Karenne", tweetText: "Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman.", userId: "@miss_potter", time: "12h", profilePic: "img_krenne", retweetOrLikedBy: "Kieron Doston", isRetweeted: false, isRetweetedBy: true, isLiked: false, isLikedBy: false, commentCount: 1906, retweetCount: 1245, likeCount: 7444, media:"" , mediaType: ""),
            
        ]
        
        return tweetData
        
    }
    
    
}
