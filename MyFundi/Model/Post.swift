//
//  Post.swift
//  MyFundi
//
//  Created by Khalid Al Ibrahim on 10/2/17.
//  Copyright © 2017 Bachmanity. All rights reserved.
//

import Foundation

class Post {
    private var _caption: String!
    private var _imageUrl: String!
    private var _likes: Int!
    private var _currentDonation: NSDecimalNumber!
    private var _donationGoal: NSDecimalNumber!
    private var _postKey: String!
    
    var caption: String {
        return _caption
    }
    
    var imageUrl: String {
        return _imageUrl
    }
    
    var likes: Int {
        return _likes
    }
    
    var currentDonation: NSDecimalNumber {
        return _currentDonation
    }
    
    var donationGoal: NSDecimalNumber {
        return _donationGoal
    }
    
    var postKey: String {
        return _postKey
    }
    
    init(caption: String, imageUrl: String, likes: Int, currentDonation: NSDecimalNumber, donationGoal: NSDecimalNumber) {
        self._caption = caption
        self._imageUrl = imageUrl
        self._likes = likes
        self._currentDonation = currentDonation
        self._donationGoal = donationGoal
    }
    
    init(postKey: String, postData: Dictionary<String, AnyObject>) {
        self._postKey = postKey
        
        if let caption = postData["caption"] as? String {
            self._caption = caption
        }
        
        if let imageUrl = postData["imageUrl"] as? String {
            self._imageUrl = imageUrl
        }
        
        if let likes = postData["likes"] as? Int {
            self._likes = likes
        }
        
        if let currentDonation = postData["currentDonation"] as? NSDecimalNumber {
            self._currentDonation = currentDonation
        }
        
        if let donationGoal = postData["donationGoal"] as? NSDecimalNumber {
            self._donationGoal = donationGoal
        }
        
    }
    
}
