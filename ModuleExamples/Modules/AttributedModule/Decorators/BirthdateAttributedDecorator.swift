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
        
        return attr
    }
}

//MARK: - BirthdateAttributedDecorator
extension BirthdateAttributedDecorator {
    
    private var mainColor : UIColor {
        return UIColor.black
    }
    
    private var softColor : UIColor {
        return UIColor.gray
    }
    
    private var mainFont : UIFont {
        return UIFont.boldSystemFont(ofSize:13)
    }
    
    private var secondaryFont : UIFont {
        return UIFont.systemFont(ofSize:13)
    }
    
    private var smalFont : UIFont {
        return UIFont.systemFont(ofSize:3)
    }
    
    private var mainAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : mainFont,
            NSAttributedString.Key.foregroundColor : mainColor,
        ]
    }
    
    private var softAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : secondaryFont,
            NSAttributedString.Key.foregroundColor : softColor,
        ]
    }
    
    private var smallAttributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : smalFont,
        ]
    }
    
    private var attributedBreakLine : NSAttributedString {
        return NSAttributedString(string: "\n", attributes:smallAttributes)
    }
    
    private var mainAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(NSAttributedString(string: "Francisco Javier, for your birthdate we'll donate €1 to a non-profit of your choice.\n", attributes: mainAttributes))
        return attr
    }
    
    private var descAttributedInfo : NSAttributedString {
        let attr = NSMutableAttributedString()
        attr.append(NSAttributedString(string: "Create your fundraiser to support a cause you care about, and we'll take care of the donation processing with no fees.\nRections apply.", attributes: softAttributes))
        return attr
    }
    
}

