//
//  SwiftUIKitTests.swift
//  SwiftUIKitTests
//
//  Created by DaBazar on 2/29/20.
//  Copyright © 2020 DaBazar. All rights reserved.
//

import XCTest
@testable import SwiftUIKit
import SnapshotTesting

class SwiftUIKitTests: XCTestCase {


    func test_all() {
        record = true
        let sut = VerticalStack(spacing: 8, [
                   ThreeColumns(
                       columnWidth: 24, spacing: 8,
                       left: VerticalStack(spacing: 4, [
                           MockView(.black),
                           MockView(.green),
                           Spacer(),
                           ]
                       ),
                       middle: MockView(.green),
                       right: MockView(.blue)
                   ),
                   Spacer(),
               ])
        let wrapper = Wrapper(
            frame: CGRect(x: 0, y: 0, width: 320, height: 300),
            containing: sut
        )
        assertSnapshot(matching: wrapper, as: .image)
    }

}
