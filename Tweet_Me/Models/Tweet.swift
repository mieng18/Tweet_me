//
//  Tweet.swift
//  Tweet_Me
//
//  Created by mai ng on 2/28/21.
//

import Foundation


struct Tweet {
    let caption: String
    let tweetID: String
//    let uid: String
    var likes: Int
    var timestamp: Date!
    let retweetCount: Int
    var user: User
    var didLike = false
    var replyingTo: String?
    
    var isReply: Bool {return replyingTo != nil}

    
    init(user: User,tweetID:String,dictionary: [String: Any]) {
        self.tweetID = tweetID
        self.user = user
        
        self.caption = dictionary["caption"] as? String ?? ""
//        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweetCount"] as? Int  ?? 0
        if let timestamp = dictionary["timestamp"] as? Double{
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
        
        if let replyingTo = dictionary["replyingTo"] as? String{
            self.replyingTo = replyingTo        }
        
        
       


    }
}
