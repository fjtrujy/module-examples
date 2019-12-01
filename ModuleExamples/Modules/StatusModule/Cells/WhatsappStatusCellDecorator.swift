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
    
    var backgroundColor : UIColor { .white }
    
    var attributedInfo : NSAttributedString {
        let attr : NSMutableAttributedString = NSMutableAttributedString.init()
        
        attr.append(attributedTitle)
        attr.append(attributedBreakLine)
        attr.append(attributedSubtitle)
        
        return attr
    }
    
    var profileIcon: UIImage? {  UIImage(named: imageName!) }
    var hideButtons : Bool { !buttons! }
    var camaraIcon : UIImage? { (buttons! ? UIImage(named: "cameraStatusIcon") : nil) }
    var editIcon : UIImage? { (buttons! ? UIImage(named: "editStatusIcon") : nil) }
}

//MARK: - DecoratorBasicInfo
private extension WhatsappStatusCellDecorator {
    var titleColor : UIColor { .black }
    var subtitleColor : UIColor { .gray }
    var titleFont : UIFont { .boldSystemFont(ofSize:15) }
    var subtitleFont : UIFont { .boldSystemFont(ofSize:12) }
    var attributedBreakLine : NSAttributedString { NSAttributedString.init(string: "\n") }
    
    var attributedTitle : NSAttributedString {
        let attributes : [NSAttributedString.Key : Any] = [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
        
        return NSAttributedString(string: title!, attributes: attributes)
    }
    
    var attributedSubtitle : NSAttributedString {
        let attributes : [NSAttributedString.Key : Any] = [
            .font : subtitleFont,
            .foregroundColor : subtitleColor,
            ]
        
        return NSAttributedString(string: subtitle!, attributes: attributes)
    }
}
