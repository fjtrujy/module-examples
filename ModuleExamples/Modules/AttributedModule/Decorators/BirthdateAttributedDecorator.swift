//
//  BirthdateAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class BirthdateAttributedDecorator: CommonAttributedDecorator {
    override func attributedTitle() -> NSAttributedString? {
        let attr = NSMutableAttributedString()
        attr.append(mainAttributedInfo)
        attr.append(attributedBreakLine)
        attr.append(descAttributedInfo)
        
        return attr.copy() as? NSAttributedString
    }
    
    override func backgroundColor() -> UIColor? {
        return lightColor
    }
}

//MARK: - BirthdateAttributedDecorator
private extension BirthdateAttributedDecorator {
    
    var mainColor : UIColor {
        return UIColor.black
    }
    
    var softColor : UIColor {
        return UIColor.gray
    }
    
    var lightColor : UIColor {
        return UIColor.init(white: 0.9, alpha: 1.0)
    }
    
    var mainFont : UIFont {
        return UIFont.boldSystemFont(ofSize:13)
    }
    
    var secondaryFont : UIFont {
        return UIFont.systemFont(ofSize:13)
    }
    
    var smalFont : UIFont {
        return UIFont.systemFont(ofSize:3)
    }
    
    var mainAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : mainFont,
            NSAttributedString.Key.foregroundColor : mainColor,
        ]
    }
    
    var softAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : secondaryFont,
            NSAttributedString.Key.foregroundColor : softColor,
        ]
    }
    
    var smallAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : smalFont,
        ]
    }
    
    var attributedBreakLine : NSAttributedString {
        return NSAttributedString(string: "\n", attributes:smallAttributes)
    }
    
    var mainAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(NSAttributedString(string: "Francisco Javier, for your birthdate we'll donate €1 to a non-profit of your choice.\n", attributes: mainAttributes))
        return attr.copy() as! NSAttributedString
    }
    
    var descAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(NSAttributedString(string: "Create your fundraiser to support a cause you care about, and we'll take care of the donation processing with no fees.\nRections apply.", attributes: softAttributes))
        return attr.copy() as! NSAttributedString
    }
    
}

