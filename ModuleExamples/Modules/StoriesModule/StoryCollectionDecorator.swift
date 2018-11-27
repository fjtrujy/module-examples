//
//  StoryCollectionDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoryCollectionDecorator: NSObject {
    private var title : String?
    private var storyURL : URL?
    private var profileURL : URL?
    
    init(storyDataModel : StoryDataModel) {
        super.init()
        
        title = storyDataModel.username
        storyURL = storyDataModel.storyImagePath
        profileURL = storyDataModel.profileImagePath
    }
    
    func storyImage() -> URL? {
        return storyURL
    }
    
    func profileImage() -> URL? {
        return profileURL
    }
    
    func attributedProfile() -> NSAttributedString? {
        return NSAttributedString(string: title!, attributes: attributes)
    }
    
    func backgroundColor() -> UIColor {
        return UIColor.white
    }
}

//MARK: DecoratorBasicInfo
extension StoryCollectionDecorator {
    
    private var titleColor : UIColor {
        return UIColor.white
    }
    
    private var titleFont : UIFont {
        return UIFont.systemFont(ofSize:11)
    }
    
    private var attributes : [NSAttributedString.Key : Any] {
        
        return [
            NSAttributedString.Key.font : titleFont,
            NSAttributedString.Key.foregroundColor : titleColor,
        ]
    }
}
