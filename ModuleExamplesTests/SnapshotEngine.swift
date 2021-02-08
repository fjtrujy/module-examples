//
//  SnapshotEngine.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 29/04/2020.
//  Copyright © 2020 Francisco Javier Trujillo Mata. All rights reserved.
//

import Foundation
import ModuleSnapshotServices

protocol SnapshotEngine: NSObject {
    associatedtype ModelGenerated: SnapshotObject
    var combinations: [ModelGenerated] { get }
}
