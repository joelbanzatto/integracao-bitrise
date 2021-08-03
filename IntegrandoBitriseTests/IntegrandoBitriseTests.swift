//
//  IntegrandoBitriseTests.swift
//  IntegrandoBitriseTests
//
//  Created by Joel Banzatto on 03/08/21.
//

import XCTest
@testable import IntegrandoBitrise

class IntegrandoBitriseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let viewModel = ViewModel()
        let categoryList = viewModel.getCategoriesList()
        let filteredCategoryList = viewModel.getFilteredCategoryList(by: "nonexistentcategory")
        
        XCTAssertFalse(categoryList.isEmpty)
        XCTAssertTrue(filteredCategoryList?.isEmpty ?? true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
