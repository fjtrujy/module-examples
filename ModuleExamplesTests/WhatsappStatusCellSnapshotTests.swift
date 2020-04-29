//
//  WhatsappStatusCellSnapshotTests.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 26/06/2019.
//  Copyright © 2019 Francisco Javier Trujillo Mata. All rights reserved.
//

import FBSnapshotTestCase
import FTMTableSectionModules

@testable import ModuleExamples

fileprivate var combinations: [WhatsappStatusSnapshotModel]?

func prepareGenerator() {
    let generator = SnapshotGenerator<WhatsappStatusSnapshotModel>()
    
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
    
    combinations = generator.generateCombinations()
}


class WhatsappStatusCellSnapshotTests: FBSnapshotTestCase {
    var cell: WhatsappStatusCell?
    var model: WhatsappStatusSnapshotModel?
    var identifier: String?
    
    override func setUp() {
        super.setUp()
        
        recordMode = false
        
        cell = (Bundle.main.loadNibNamed(String(describing: WhatsappStatusCell.self), owner: nil, options: nil)?.first as! WhatsappStatusCell)
    }
    
    @objc func verifyView() {
        let decorator = WhatsappStatusCellDecorator(imageName: model!.imageName!,
                                                    title: model!.title!,
                                                    subtitle: model!.subtitle!,
                                                    buttons: model!.buttons!)
        
        cell?.configure(decorator: decorator)
        cell?.adjustToFitScreen(orientation: model!.orientation!)
        
        FBSnapshotVerifyView(cell!, identifier: identifier!)
    }
    
    override class var defaultTestSuite: XCTestSuite {
        prepareGenerator()
        let scenarios = combinations ?? []
        return scenarios.reduce(into: XCTestSuite(forTestCaseClass: WhatsappStatusCellSnapshotTests.self)) {
            // Generate a test for our specific selector
            let snapshotTest = WhatsappStatusCellSnapshotTests(selector: #selector(verifyView))
            let stringIndex: String = scenarios.firstIndex(of: $1)?.description ?? ""
            
            snapshotTest.model = $1
            snapshotTest.identifier = stringIndex
            
            $0.addTest(snapshotTest)
        }
    }
}

