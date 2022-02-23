//
//  StoriesTitleDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoriesTitleDecorator {
    var backgroundColor: UIColor { .white }
    var attributedTitle: NSAttributedString { .init(string: "Stories", attributes: attributes) }
    var attributedArchive: NSAttributedString { .init(string: "Your archive", attributes: attributes) }
}

//MARK: - DecoratorBasicInfo
extension StoriesTitleDecorator {
    private var titleColor: UIColor { .black }
    private var titleFont: UIFont { .boldSystemFont(ofSize:13) }
    
    private var attributes: [NSAttributedString.Key : Any] {
        [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
