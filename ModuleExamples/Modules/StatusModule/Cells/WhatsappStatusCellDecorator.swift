//
//  WhatsappStatusCellDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 18/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsappStatusCellDecorator: NSObject {
    private var imageName : String?
    private var title : String?
    private var subtitle : String?
    private var buttons : Bool?
    
    public init(imageName: String, title: String, subtitle: String, buttons: Bool) {
        super.init()
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
        self.buttons = buttons
    }
    
    var backgroundColor : UIColor {
        return UIColor.white
    }
    
    var attributedInfo : NSAttributedString {
        let attr : NSMutableAttributedString = NSMutableAttributedString.init()
        
        attr.append(attributedTitle)
        attr.append(attributedBreakLine)
        attr.append(attributedSubtitle)
        
        return attr
    }
    
    var profileIcon: UIImage? {
        return UIImage(named: imageName!)
    }
    
    var hideButtons : Bool {
        return !buttons!
    }
    
    var camaraIcon : UIImage? {
        return (buttons! ? UIImage(named: "cameraStatusIcon") : nil)
    }
    
    var editIcon : UIImage? {
        return (buttons! ? UIImage(named: "editStatusIcon") : nil)
    }
    
}

//MARK: DecoratorBasicInfo
extension WhatsappStatusCellDecorator {
    
    private var titleColor : UIColor {
        return UIColor.black
    }
    
    private var subtitleColor : UIColor {
        return UIColor.gray
    }
    
    private var titleFont : UIFont {
        return UIFont.boldSystemFont(ofSize:15)
    }
    
    private var subtitleFont : UIFont {
        return UIFont.boldSystemFont(ofSize:12)
    }
    
    private var attributedBreakLine : NSAttributedString {
        return NSAttributedString.init(string: "\n")
    }
    
    private var attributedTitle : NSAttributedString {
        
        let attributes = [
            NSAttributedString.Key.font : titleFont,
            NSAttributedString.Key.foregroundColor : titleColor,
            ]
        
        return NSAttributedString(string: title!, attributes: attributes)
    }
    
    private var attributedSubtitle : NSAttributedString {
        
        let attributes = [
            NSAttributedString.Key.font : subtitleFont,
            NSAttributedString.Key.foregroundColor : subtitleColor,
            ]
        
        return NSAttributedString(string: subtitle!, attributes: attributes)
    }
}
