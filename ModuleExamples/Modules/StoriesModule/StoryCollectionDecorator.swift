//
//  StoryCollectionDecorator.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 27/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class StoryCollectionDecorator {
    private var title : String?
    private var storyURL : URL?
    private var profileURL : URL?
    
    init(storyDataModel : StoryDataModel) {
        title = storyDataModel.username
        storyURL = storyDataModel.storyImagePath
        profileURL = storyDataModel.profileImagePath
    }
    
    func storyImage() -> URL? { storyURL }
    func profileImage() -> URL? { profileURL }
    func attributedProfile() -> NSAttributedString? { NSAttributedString(string: title!, attributes: attributes) }
    func backgroundColor() -> UIColor { .white }
    func borderColor() -> UIColor { .blue }
}

//MARK: - DecoratorBasicInfo
private extension StoryCollectionDecorator {
    var titleColor : UIColor { .white }
    var titleFont : UIFont { .boldSystemFont(ofSize:12) }
    
    private var attributes : [NSAttributedString.Key : Any] {
        return [
            .font : titleFont,
            .foregroundColor : titleColor,
        ]
    }
}
