//
//  SnapshotsTestLauncher.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 29/04/2020.
//  Copyright © 2020 Francisco Javier Trujillo Mata. All rights reserved.
//

import XCTest

// This class in needed because subclases of XCTestCase are not automatically launching the test, if they hava generics.
// Additionally we have generics, plus a custom defaultTestSuite
// https://stackoverflow.com/questions/35273597/is-use-of-generics-valid-in-xctestcase-subclasses

class SnapshotsTestLauncher: XCTestCase {
    override func run() {
        let suites: [XCTestSuite] = [
            WhatsappStatusCellSnapshotTests.defaultTestSuite,
        ]
        
        suites.forEach { $0.run() }
        super.run()
    }
    
    func testDummy() {} // Neded to be there for Xcode recognized as class with tests
}
