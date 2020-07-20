//
//  RequestFactory.swift
//  GBSHOP
//
//  Created by Алексей Усанов on 20.07.2020.
//  Copyright © 2020 Алексей Усанов. All rights reserved.
//

import Foundation
import Alamofire

class RequestFactory {
    
    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }
    
    lazy var commonSessionManager: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    let sesseionQueue = DispatchQueue.global(qos: .utility)
    
    func makeAuthRequestFactory() -> AuthRequestFactory {
        let errorPArser = makeErrorParser()
        return Auth(errorParser: errorPArser, session: commonSessionManager, queue: sesseionQueue)
    }
}
