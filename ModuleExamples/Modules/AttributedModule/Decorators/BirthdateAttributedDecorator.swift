//
//  BirthdateAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class BirthdateAttributedDecorator: CommonAttributedDecorator {
    override var attributedTitle: NSAttributedString {
        [
            mainAttributedInfo,
            attributedBreakLine,
            descAttributedInfo,
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
    
    override var backgroundColor: UIColor { lightColor }
}

//MARK: - BirthdateAttributedDecorator
private extension BirthdateAttributedDecorator {
    var mainColor : UIColor { .black }
    var softColor : UIColor { .gray }
    var lightColor : UIColor { UIColor(white: 0.9, alpha: 1.0) }
    var mainFont : UIFont { .boldSystemFont(ofSize:13) }
    var secondaryFont : UIFont { .systemFont(ofSize:13) }
    var smalFont : UIFont { .systemFont(ofSize:3) }
    
    var mainAttributes : [NSAttributedString.Key : Any] {
        [
            .font : mainFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var softAttributes : [NSAttributedString.Key : Any] {
        [
            .font : secondaryFont,
            .foregroundColor : softColor,
        ]
    }
    
    var smallAttributes : [NSAttributedString.Key : Any] {
        [
            .font : smalFont,
        ]
    }
    
    var attributedBreakLine : NSAttributedString { .init(string: "\n", attributes:smallAttributes) }
    
    var mainAttributedInfo : NSAttributedString {
        .init(string: "Francisco Javier, for your birthdate we'll donate €1 to a non-profit of your choice.\n", attributes: mainAttributes)
    }
    
    var descAttributedInfo : NSAttributedString {
        .init(string: "Create your fundraiser to support a cause you care about, and we'll take care of the donation processing with no fees.\nRections apply.", attributes: softAttributes)
    }
    
}

