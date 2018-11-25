//
//  StoryDataModel.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 25/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

private struct Constants {
    static let usernameKey : String = "username"
    static let profileImagePathKey : String = "profileImagePath"
    static let storyImagePathKey : String = "storyImagePath"
}

class StoryDataModel: NSObject {
    private(set) var username : String?
    private(set) var profileImagePath : URL?
    private(set) var storyImagePath : URL?
    
    init(payload : Dictionary<String, Any>) {
        username = (payload[Constants.usernameKey] as! String)
        let profileImageString = payload[Constants.profileImagePathKey] as! String
        profileImagePath = (NSURL(string: profileImageString)! as URL)
        
        let storyImageString = payload[Constants.storyImagePathKey] as! String
        storyImagePath = (NSURL(string: storyImageString)! as URL)
    }
}
