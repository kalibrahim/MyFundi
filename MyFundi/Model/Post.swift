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
    private var _currentDonation: Int!
    private var _donationGoal: Int!
    private var _title: String!
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
    
    var currentDonation: Int {
        return _currentDonation
    }
    
    var donationGoal: Int {
        return _donationGoal
    }
    
    var title: String {
        return _title
    }
    
    var postKey: String {
        return _postKey
    }
    
    init(caption: String, imageUrl: String, likes: Int, currentDonation: Int, donationGoal: Int, title: String) {
        self._caption = caption
        self._imageUrl = imageUrl
        self._likes = likes
        self._currentDonation = currentDonation
        self._donationGoal = donationGoal
        self._title = title
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
        
        if let currentDonation = postData["currentDonation"] as? Int {
            self._currentDonation = currentDonation
        }
        
        if let donationGoal = postData["donationGoal"] as? Int {
            self._donationGoal = donationGoal
        }
        
        if let title = postData["title"] as? String {
            self._title = title
        }
        
    }
    
}
