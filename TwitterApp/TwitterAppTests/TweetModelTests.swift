//
//  TweetModelTests.swift
//  TwitterAppTests
//
//  Created by Vijay Parmar on 01/11/23.
//

import XCTest
@testable import TwitterApp

final class TweetModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCellDataAvailable() {
        //Arrange
       let sut = TweetHomeViewModel()
       //Act
       let rows = sut.numberOfRowsInSection(1)
        //Assert
        XCTAssertGreaterThan(rows, 0,"Data not available")
    }

   

}
