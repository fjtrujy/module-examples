//
//  StoryCollectionCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit
import SDWebImage
import CircleImageView

class StoryCollectionCell: UICollectionViewCell {
    @IBOutlet weak var storyImageView : UIImageView!
    @IBOutlet weak var profileImageView : CircleImageView!
    @IBOutlet weak var borderImageView : CircleImageView!
    @IBOutlet weak var profileLabel : UILabel!
        
    func configure(decorator: StoryCollectionDecorator) {
        backgroundColor = decorator.backgroundColor()
        borderImageView.backgroundColor = decorator.borderColor()
        
        storyImageView.sd_setImage(with: decorator.storyImage(), completed: nil)
        profileImageView.sd_setImage(with: decorator.profileImage(), completed: nil)
        profileLabel.attributedText = decorator.attributedProfile()
    }

}
