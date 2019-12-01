//
//  GenericAppInformation.swift
//  ModuleExamples
//
//  Created by Francisco Javier Trujillo Mata on 15/11/2018.
//  Copyright © 2018 Francisco Javier Trujillo Mata. All rights reserved.
//

import UIKit

enum SupportedApp: String {
    case Facebook
    case Whatsapp
    case Potpurri
    case Playground
}

struct GenericAppInformation {
    let app : SupportedApp
    let appIcon : UIImage?
}
