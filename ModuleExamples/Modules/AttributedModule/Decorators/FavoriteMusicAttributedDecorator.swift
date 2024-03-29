//
//  FavoriteMusicAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/04/2019.
//  Copyright © 2019 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class FavoriteMusicAttributedDecorator: CommonAttributedDecorator {
    override var attributedTitle: NSAttributedString {
        [
            attributedRadioIcon,
            attributedBreakLine,
            attributedBreakLine,
            attributedDescription,
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
}

//MARK: - FavoriteMusicAttributedDecorator
private extension FavoriteMusicAttributedDecorator {
    var mainColor : UIColor { .black }
    var mainFont : UIFont { .boldSystemFont(ofSize:25) }
    var secondaryFont : UIFont { .systemFont(ofSize:14) }
    var smalFont : UIFont { .systemFont(ofSize:9) }
    
    var paragraph : NSParagraphStyle {
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        return paragraph
    }
    
    var mainAttributes : [NSAttributedString.Key : Any] {
        [
            .font : mainFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var softAttributes : [NSAttributedString.Key : Any] {
        [
            .font : secondaryFont,
            .foregroundColor : mainColor,
            .paragraphStyle : paragraph,
        ]
    }
    
    var smallAttributes : [NSAttributedString.Key : Any] {
        [
            .font : smalFont,
        ]
    }
    
    var attributedBreakLine : NSAttributedString { .init(string: "\n", attributes:smallAttributes) }
    
    var attributedRadioIcon : NSAttributedString {
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "radioIcon")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        let attributes: [NSAttributedString.Key : Any] = [NSAttributedString.Key.paragraphStyle: paragraph]
        let radioIconAttributed = NSMutableAttributedString(attachment: imageAttachment)
        radioIconAttributed.addAttributes(attributes, range: NSRange(location: 0, length: radioIconAttributed.length))
        
        return radioIconAttributed
    }
    
    var attributedDescription : NSAttributedString {
        .init(string: "What music do you listen to? Add songs to your profile to show people your tastes and how you are.",
              attributes: softAttributes)
    }
}
