//
//  NewPostActionsCell.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class NewPostActionsCell: UITableViewCell {
    @IBOutlet private weak var liveButton : UIButton?
    @IBOutlet private weak var firstSeparator : UIView?
    @IBOutlet private weak var pictureButton : UIButton?
    @IBOutlet private weak var secondSeparator : UIView?
    @IBOutlet private weak var checkInButton : UIButton?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let decorator = NewPostActionsDecorator()
        
        backgroundColor = decorator.backgroundColor
        firstSeparator?.backgroundColor = decorator.separatorColor
        secondSeparator?.backgroundColor = decorator.separatorColor
        
        liveButton?.setImage(decorator.liveIcon, for: UIControl.State.normal)
        liveButton?.setAttributedTitle(decorator.liveAttributedString, for: UIControl.State.normal)
        
        pictureButton?.setImage(decorator.pictureIcon, for: UIControl.State.normal)
        pictureButton?.setAttributedTitle(decorator.photoAttributedString, for: UIControl.State.normal)
        
        checkInButton?.setImage(decorator.checkInIcon, for: UIControl.State.normal)
        checkInButton?.setAttributedTitle(decorator.checkInAttributedString, for: UIControl.State.normal)
    }
    
}
