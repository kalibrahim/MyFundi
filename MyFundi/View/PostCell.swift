//
//  PostCell.swift
//  MyFundi
//
//  Created by Khalid Al Ibrahim on 10/2/17.
//  Copyright © 2017 Bachmanity. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var fundraiserLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

}
