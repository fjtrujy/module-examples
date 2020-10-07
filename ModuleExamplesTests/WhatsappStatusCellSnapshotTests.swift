//
//  WhatsappStatusCellSnapshotTests.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 26/06/2019.
//  Copyright © 2019 Francisco Javier Trujillo Mata. All rights reserved.
//

import XCTest
import UIKit
import ModulesKitSnapshot
import SnapshotTesting

@testable import ModuleExamples

private let combinations: [WhatsappStatusSnapshotModel] = {
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
    
    return generator.generateCombinations()
}()

class WhatsappStatusCellSnapshotTests: XCTestCase {
    let cell = (Bundle.main.loadNibNamed(String(describing: WhatsappStatusCell.self),
                                         owner: nil, options: nil)?.first as! WhatsappStatusCell)
    
    var model: WhatsappStatusSnapshotModel?
    var identifier: String?
    
    override func setUp() {
        super.setUp()
        
        isRecording = false
    }
    
    @objc func verifyView() {
        guard let image = model?.imageName, let title = model?.title, let subtitle = model?.subtitle,
            let buttons = model?.buttons, let orientation = model?.orientation
        else { return XCTFail("The model or identifier for the snapshot were not set") }
        
        let decorator = WhatsappStatusCellDecorator(imageName: image, title: title, subtitle: subtitle,
                                                    buttons: buttons)
        
        cell.configure(decorator: decorator)
        cell.adjustToFitScreen(orientation: orientation)
        
        assertSnapshot(matching: cell, as: .image)
    }
    
    override class var defaultTestSuite: XCTestSuite {
        combinations.reduce(into: XCTestSuite(forTestCaseClass: WhatsappStatusCellSnapshotTests.self)) {
            // Generate a test for our specific selector
            let snapshotTest = WhatsappStatusCellSnapshotTests(selector: #selector(verifyView))
            
            snapshotTest.model = $1
            snapshotTest.identifier = combinations.firstIndex(of: $1)?.description
            
            $0.addTest(snapshotTest)
        }
    }
}
