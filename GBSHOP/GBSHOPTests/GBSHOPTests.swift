//
//  GBSHOPTests.swift
//  GBSHOPTests
//
//  Created by Алексей Усанов on 15.07.2020.
//  Copyright © 2020 Алексей Усанов. All rights reserved.
//

import XCTest
import Alamofire

@testable import GBSHOP

class GBSHOPTests: XCTestCase {
    
    let expectation = XCTestExpectation(description: "Download failed url")
    
    var errorParser: ErrorParserStub!

    override func setUpWithError() throws {
        super.setUp()
        errorParser = ErrorParserStub()
    }

    override func tearDownWithError() throws {
        super.tearDown()
       errorParser = nil
    }
    
//    func testShuldDownloadAndParse() {
//        AF.request("https://").responseCodable(errorParser: errorParser) { [weak self] (response: AFDataResponse<PostStub>) in
//            switch response.result {
//            case .failure(_):
//                XCTFail()
//            case .success(_):
//                XCTAssert(true)
//            }
//            self?.expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: 10)
//
//
//
//    }
    
    func testLogin() {
        let auth = Auth(errorParser: errorParser, session: Session())
        auth.login(userName: "test", password: "123456") { (response: AFDataResponse<LoginResult>) in
            switch response.result {
                case .failure(_):
                    XCTFail()
                case .success(let data):
                    XCTAssertEqual(data.result, 1)
               
                }
                self.expectation.fulfill()
            }
            wait(for: [expectation], timeout: 10)
        
    }
   

}
