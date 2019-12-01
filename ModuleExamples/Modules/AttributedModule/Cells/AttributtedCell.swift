//
//  AttributtedCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class AttributtedCell: UITableViewCell {
    @IBOutlet private weak var myLabel : UILabel?

    func configure(decorator: CommonAttributedDecorator) {
        backgroundColor = decorator.backgroundColor()
        myLabel?.attributedText = decorator.attributedTitle()
    }
}
