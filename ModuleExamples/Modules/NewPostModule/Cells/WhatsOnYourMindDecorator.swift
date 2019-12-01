//
//  WhatsOnYourMindDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsOnYourMindDecorator {
    func backgroundColor() -> UIColor { .white }
    func profileIcon() -> UIImage? { UIImage(named: "whatsNewProfile") }
    func attributedDesc() -> NSAttributedString {
        NSAttributedString(string: "What's on your mind?", attributes: attributes)
    }
}

//MARK: - DecoratorBasicInfo
private extension WhatsOnYourMindDecorator {
    var titleColor : UIColor { .darkGray }
    var titleFont : UIFont { .boldSystemFont(ofSize:13) }
    
    var attributes : [NSAttributedString.Key : Any] {
        return [
            .font : titleFont,
            .foregroundColor : titleColor,
            ]
    }
}
