//
//  AbstractRequestFactory.swift
//  GBSHOP
//
//  Created by Алексей Усанов on 20.07.2020.
//  Copyright © 2020 Алексей Усанов. All rights reserved.
//

import Foundation
import Alamofire

protocol AbstractRequestFactory {
    var errorParser: AbstractErrorParser { get }
    var session: Session { get }
    var queue: DispatchQueue? { get }
    
    @discardableResult
    func request<T: Decodable>(request: URLRequestConvertible, completionHandler: @escaping(AFDataResponse<T>) -> Void) -> DataRequest
}

extension AbstractRequestFactory {
    
    @discardableResult
    func request<T: Decodable>(request: URLRequestConvertible, completionHandler: @escaping(AFDataResponse<T>) -> Void) -> DataRequest {
        return session
            .request(request)
            .responseDecodable(completionHandler: completionHandler)
    }
}

