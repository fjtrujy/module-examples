//
//  SnapshotTest1.swift
//  ModuleExamplesTests
//
//  Created by Francisco Javier Trujillo Mata on 08/05/2019.
//  Copyright © 2019 Francisco Javier Trujillo Mata. All rights reserved.
//

import FBSnapshotTestCase
@testable import ModuleExamples

class SnapshotTest1: FBSnapshotTestCase {
    private var cell: WhatsappStatusCell?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        
        recordMode = true;
        
        cell = Bundle.main.loadNibNamed(String(describing: WhatsappStatusCell.self),
                                        owner: nil,
                                        options: nil)?.first as? WhatsappStatusCell
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        cell = nil
    }

    func testBasicLayout() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        FBSnapshotVerifyView(cell!)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


//static CGFloat BVRegulatoryCellHeight = 60.0f;
//
//@interface BVRegulatoryFooterLogoCellTests : FBSnapshotTestCase
//
//@property (nonatomic, strong) BVRegulatoryFooterLogoCell *cell;
//
//@end
//
//@implementation BVRegulatoryFooterLogoCellTests
//
//- (void)setUp
//{
//    [super setUp];
//
//    self.recordMode = NO;
//
//    self.cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([BVRegulatoryFooterLogoCell class])
//    owner:nil
//    options:nil] firstObject];
//    }
//
//    - (void)testBasicLayout
//        {
//            [self.cell sizeWithHeight:BVRegulatoryCellHeight orientation:UIInterfaceOrientationPortrait];
//
//            FBSnapshotVerifyView(self.cell, nil);
//        }
//
//        - (void)testBasicLayoutAtRegularWidth
//            {
//                [self.cell sizeWithHeight:BVRegulatoryCellHeight orientation:UIInterfaceOrientationLandscapeLeft];
//
//                FBSnapshotVerifyView(self.cell, nil);
//}
