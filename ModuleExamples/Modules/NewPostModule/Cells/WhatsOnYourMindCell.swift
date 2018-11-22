//
//  WhatsOnYourMindCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import CircleImageView

class WhatsOnYourMindCell: UITableViewCell {
    @IBOutlet weak var icon : CircleImageView?
    @IBOutlet weak var desc : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let decorator = WhatsOnYourMindDecorator()
        
        self.backgroundColor = decorator.backgroundColor()
        self.icon?.image = decorator.profileIcon()
        self.desc?.attributedText = decorator.attributedDesc()
    }
    
}
