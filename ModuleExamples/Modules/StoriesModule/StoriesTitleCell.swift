//
//  StoriesTitleCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoriesTitleCell: UITableViewCell {
    @IBOutlet private weak var title : UILabel?
    @IBOutlet private weak var archives : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let decorator = StoriesTitleDecorator()
        
        backgroundColor = decorator.backgroundColor
        title?.attributedText = decorator.attributedTitle
        archives?.attributedText = decorator.attributedArchive
    }
    
}
