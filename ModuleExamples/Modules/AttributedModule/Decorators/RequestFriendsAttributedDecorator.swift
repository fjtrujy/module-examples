//
//  RequestFriendsAttributedDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 12/12/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class RequestFriendsAttributedDecorator: CommonAttributedDecorator {
    override var attributedTitle: NSAttributedString {
        [
            mainAttributedInfo,
            attributedBreakLine,
            descAttributedInfo,
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
}

//MARK: - RequestFriendsAttributedDecorator
private extension RequestFriendsAttributedDecorator {
    var mainColor : UIColor { .black }
    var softColor : UIColor { .gray }
    var mainFont : UIFont { .boldSystemFont(ofSize:15) }
    var secondaryFont : UIFont { .systemFont(ofSize:13) }
    var alternativeFont : UIFont { .systemFont(ofSize:15) }
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
    
    var requestFriendAttributedIcon : NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "requestFriend")
        changeAttachmentImageHeight(attachment: imageAttachment, height: mainFont.pointSize)
        
        return NSAttributedString(attachment: imageAttachment)
    }
    
    var mainAttributedInfo : NSAttributedString {
        [
            .init(string: "Miguél Ángel Gutiérrez, Elena Benítez ", attributes: mainAttributes),
            .init(string: "and other 3 accepted your friend requests.", attributes: alternativeAttributes),
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
    
    var descAttributedInfo : NSAttributedString {
        [
            requestFriendAttributedIcon,
            .init(string: " Wednesday at 19:25.", attributes: softAttributes),
        ].reduce(into: NSMutableAttributedString()) { $0.append($1) }
    }
}

