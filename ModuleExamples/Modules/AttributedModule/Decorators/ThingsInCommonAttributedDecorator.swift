//
//  ThingsInCommonAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class ThingsInCommonAttributedDecorator: CommonAttributedDecorator {
    override var attributedTitle: NSAttributedString {
        [
            mainAttributedInfo,
            attributedBreakLine,
            mutualFriendsAttributedInfo,
            attributedBreakLine,
            thingsInCommonAttributedInfo,
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
}

//MARK: - ThingsInCommonAttributedDecorator
private extension ThingsInCommonAttributedDecorator {
    var mainColor : UIColor { .black }
    var softColor : UIColor { .gray }
    var mainFont : UIFont { .boldSystemFont(ofSize:15) }
    var secondaryFont : UIFont { .systemFont(ofSize:13) }
    var alternativeFont : UIFont { .boldSystemFont(ofSize:13) }
    var smalFont : UIFont { .systemFont(ofSize:9) }
    
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
    
    var alternativeAttributes : [NSAttributedString.Key : Any] {
        [
            .font : alternativeFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var smallAttributes : [NSAttributedString.Key : Any] {
        [
            .font : smalFont,
            .foregroundColor : mainColor,
        ]
    }
    
    var attributedBreakLine : NSAttributedString { .init(string: "\n", attributes:smallAttributes) }
    
    var offLineFriendAttributedIcon : NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "offlineFriend")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        return NSAttributedString(attachment: imageAttachment)
    }
    
    var thanksHeartAttributedIcon : NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "thanksHeart")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        return NSAttributedString(attachment: imageAttachment)
    }
    
    var mainAttributedInfo : NSAttributedString { .init(string: "Jose Luis Jordano Palma\n", attributes: mainAttributes) }
    
    var mutualFriendsAttributedInfo : NSAttributedString {
        [
            .init(string: " Mutual friends ", attributes: softAttributes),
            .init(string: "Patricio Pacheco Arias ", attributes: alternativeAttributes),
            .init(string: "and 7 others\n", attributes: softAttributes),
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
    
    var thingsInCommonAttributedInfo : NSAttributedString {
        [
            thanksHeartAttributedIcon,
            .init(string: " Things in common ", attributes: softAttributes),
            .init(string: "RULES Sierra Nevada ", attributes: alternativeAttributes),
            .init(string: "and 1 more\n", attributes: softAttributes),
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
    
}
