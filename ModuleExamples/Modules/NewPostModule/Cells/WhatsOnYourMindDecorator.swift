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
        return .white
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
        return .darkGray
    }
    
    private var titleFont : UIFont {
        return .boldSystemFont(ofSize:13)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            .font : titleFont,
            .foregroundColor : titleColor,
            ]
    }
}
