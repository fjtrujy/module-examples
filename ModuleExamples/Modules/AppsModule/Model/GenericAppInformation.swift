//
//  GenericAppInformation.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

class GenericAppInformation: NSObject {
    private(set) var appName : String
    private(set) var app : SupportedApp
    private(set) var appIcon : UIImage?
    
    init(app: SupportedApp, appName: String, appIcon: UIImage?) {
        self.app = app
        self.appName = appName
        self.appIcon = appIcon
        
        super.init()
    }
}
