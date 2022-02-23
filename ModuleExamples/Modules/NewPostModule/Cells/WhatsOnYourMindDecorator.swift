//
//  WhatsOnYourMindDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 22/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class WhatsOnYourMindDecorator {
    var backgroundColor: UIColor { .white }
    var profileIcon: UIImage? { UIImage(named: "whatsNewProfile") }
    var attributedDesc: NSAttributedString { .init(string: "What's on your mind?", attributes: attributes) }
}

//MARK: - DecoratorBasicInfo
private extension WhatsOnYourMindDecorator {
    var titleColor : UIColor { .darkGray }
    var titleFont : UIFont { .boldSystemFont(ofSize:13) }
    
    var attributes : [NSAttributedString.Key : Any] {
        [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
