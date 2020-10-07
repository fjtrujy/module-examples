//
//  WhatsappStatusCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsappStatusCell: UITableViewCell {
    @IBOutlet private weak var stateDescription : UILabel?
    @IBOutlet private weak var stateImage : CircleImageView?
    @IBOutlet private weak var buttonsView : UIView?
    @IBOutlet private weak var cameraButton : UIButton?
    @IBOutlet private weak var editButton : UIButton?

    func configure(decorator : WhatsappStatusCellDecorator) {
        backgroundColor = decorator.backgroundColor
        buttonsView?.backgroundColor = decorator.backgroundColor
        
        stateImage?.image = decorator.profileIcon
        stateDescription?.attributedText = decorator.attributedInfo
        
        buttonsView?.isHidden = decorator.hideButtons
        cameraButton?.setImage(decorator.camaraIcon, for: UIControl.State.normal)
        editButton?.setImage(decorator.editIcon, for: UIControl.State.normal)
    }
}
