//
//  DataService.swift
//  MyFundi
//
//  Created by Khalid Al Ibrahim on 10/2/17.
//  Copyright © 2017 Bachmanity. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    
    static let ds = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_FUNDRAISERS = DB_BASE.child("fundraisers")
    private var _REF_DONATIONS = DB_BASE.child("donations")
    private var _REF_USERS = DB_BASE.child("users")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_FUNDRAISERS: DatabaseReference {
        return _REF_FUNDRAISERS
    }
    
    var REF_DONATIONS: DatabaseReference {
        return _REF_DONATIONS
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    func createFirebaseDBUser(uid: String, userData: Dictionary<String, String>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }

}
