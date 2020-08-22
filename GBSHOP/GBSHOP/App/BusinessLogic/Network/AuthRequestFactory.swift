//
//  AuthRequestFactory.swift
//  GBSHOP
//
//  Created by Алексей Усанов on 20.07.2020.
//  Copyright © 2020 Алексей Усанов. All rights reserved.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping(AFDataResponse<LoginResult>) -> Void)
    
    func logout(userId: Int, completionHandler: @escaping(AFDataResponse<CommonResult>) -> Void)
    
    func registerUser(userId: Int, userName: String, password: String, email: String, gender: String, creditCard: String, bio: String, completionHandler: @escaping(AFDataResponse<RegisterResult>) -> Void)
    
    func changeUserData(userId: Int, userName: String, password: String, email: String, gender: String, creditCard: String, bio: String, completionHandler: @escaping(AFDataResponse<CommonResult>) -> Void)
}
