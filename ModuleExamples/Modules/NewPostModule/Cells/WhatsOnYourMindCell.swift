//
//  WhatsOnYourMindCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsOnYourMindCell: UITableViewCell {
    @IBOutlet private weak var icon : CircleImageView?
    @IBOutlet private weak var desc : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let decorator = WhatsOnYourMindDecorator()
        
        backgroundColor = decorator.backgroundColor
        icon?.image = decorator.profileIcon
        desc?.attributedText = decorator.attributedDesc
    }
    
}
