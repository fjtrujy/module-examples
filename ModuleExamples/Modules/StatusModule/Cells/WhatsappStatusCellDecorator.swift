//
//  WhatsappStatusCellDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 18/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsappStatusCellDecorator {
    private var imageName : String?
    private var title : String?
    private var subtitle : String?
    private var buttons : Bool?
    
    public init(imageName: String, title: String, subtitle: String, buttons: Bool) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
        self.buttons = buttons
    }
    
    var backgroundColor : UIColor { .white }
    var attributedInfo : NSAttributedString {
        [
            attributedTitle,
            attributedBreakLine,
            attributedSubtitle,
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
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
    var attributedBreakLine : NSAttributedString { NSAttributedString(string: "\n") }
    
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
