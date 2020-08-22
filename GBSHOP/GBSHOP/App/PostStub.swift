//
//  PostStub.swift
//  GBSHOPTests
//
//  Created by Алексей Усанов on 21.07.2020.
//  Copyright © 2020 Алексей Усанов. All rights reserved.
//

import Foundation

struct PostStub: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

enum ApiErrorStub: Error {
    case fatalError
}

struct ErrorParserStub: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
        return ApiErrorStub.fatalError
    }
    
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
        return error
    }
}
