//
//  WhatsOnYourMindDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsOnYourMindDecorator: NSObject {
    func backgroundColor() -> UIColor? {
        return UIColor.white
    }
    
    func profileIcon() -> UIImage? {
        return UIImage(named: "whatsNewProfile")
    }
    
    func attributedDesc() -> NSAttributedString {
        return NSAttributedString(string: "What's on your mind?", attributes: attributes)
    }
}

//MARK: - DecoratorBasicInfo
extension WhatsOnYourMindDecorator {
    
    private var titleColor : UIColor {
        return UIColor.darkGray
    }
    
    private var titleFont : UIFont {
        return UIFont.boldSystemFont(ofSize:13)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : titleFont,
            NSAttributedString.Key.foregroundColor : titleColor,
            ]
    }
}
