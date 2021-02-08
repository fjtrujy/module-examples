//
//  WhatsappSnapshotGenerator.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 29/04/2020.
//  Copyright © 2020 Francisco Javier Trujillo Mata. All rights reserved.
//

import Foundation
import ModuleSnapshotServices

class WhatsappSnapshotGenerator: NSObject, SnapshotEngine {
    class Model: SnapshotObject {
        var imageName : String?
        var title : String?
        var subtitle : String?
        var buttons : Bool?
    }
    
    var combinations: [Model] = {
        let generator = SnapshotGenerator<Model>()
        
        let titles = [
            "Jhon Smith",
            "Paco Perez",
            "Dolores Fuertes de Barriga",
            "Don Omar",
            "Brhadaranyakopanishadvivekachudamani Erreh de la Huerta Castillo",
        ]
        
        let subtitles = [
            "15 minutes ago",
            "1 hour ago",
            "Whatever time ago",
            "I don't know what else to cover",
            "Righ now",
        ]
        
        generator.addCombination(propertyKey: "imageName", values: ["trujy"])
        generator.addCombination(propertyKey: "title", values: titles)
        generator.addCombination(propertyKey: "subtitle", values: subtitles)
        generator.addCombination(propertyKey: "buttons", values: [true, false])
        
        return generator.generateCombinations()
    }()
}
