//
//  WhatsappStatusSnapshotTests.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 29/04/2020.
//  Copyright © 2020 Francisco Javier Trujillo Mata. All rights reserved.
//

import FBSnapshotTestCase
import FTMTableSectionModules

@testable import ModuleExamples

class WhatsappStatusCellSnapshotTests: GenericSnapshotTestSuite<WhatsappStatusCell, WhatsappSnapshotGenerator> {
    override func executeTestForView(_ view: WhatsappStatusCell, model: WhatsappSnapshotGenerator.ModelGenerated,
                                     identifier: String) {
        guard let img = model.imageName, let title = model.title, let subtitle = model.subtitle,
            let buttons = model.buttons, let orientation = model.orientation
        else { return XCTFail("The model or identifier for the snapshot were not set") }
        
        let decorator = WhatsappStatusCellDecorator(imageName: img, title: title, subtitle: subtitle, buttons: buttons)
        
        view.configure(decorator: decorator)
        view.adjustToFitScreen(orientation: orientation)
        
        FBSnapshotVerifyView(view, identifier: identifier)
    }
}
