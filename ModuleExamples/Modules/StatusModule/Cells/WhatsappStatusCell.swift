//
//  WhatsappStatusCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsappStatusCell: UITableViewCell {
    @IBOutlet weak open var stateDescription : UILabel?
    @IBOutlet weak open var stateImage : UIImageView?
    @IBOutlet weak open var buttonsView : UIView?
    @IBOutlet weak open var cameraButton : UIButton?
    @IBOutlet weak open var editButton : UIButton?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(decorator : WhatsappStatusCellDecorator) {
        backgroundColor = decorator.backgroundColor
        buttonsView?.backgroundColor = decorator.backgroundColor
        
        stateDescription?.attributedText = decorator.attributedInfo
        
        buttonsView?.isHidden = decorator.hideButtons
        cameraButton?.setImage(decorator.camaraIcon, for: UIControl.State.normal)
        editButton?.setImage(decorator.editIcon, for: UIControl.State.normal)
        
    }
    
}
