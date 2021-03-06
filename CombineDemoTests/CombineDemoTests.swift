//
//  CombineDemoTests.swift
//  CombineDemoTests
//
//  Created by Amr AbdelWahab on 2/5/20.
//  Copyright © 2020 Orcas. All rights reserved.
//

import XCTest
@testable import CombineDemo

class CombineDemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testFetchPosts() {
        fetchUserPosts(dataSource: MockFetchPostsDataSource()).sink(receiveValue: {
            [weak self] postsScreenData in
            guard case .success(let posts) = postsScreenData else {
                return
            }
            XCTAssert(posts.count == 2 , "Test Succeed , posts Count = 2")
        })
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
