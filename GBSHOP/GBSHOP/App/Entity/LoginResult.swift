//
//  LoginResult.swift
//  GBSHOP
//
//  Created by Алексей Усанов on 20.07.2020.
//  Copyright © 2020 Алексей Усанов. All rights reserved.
//

import Foundation

struct LoginResult: Codable {
    let result: Int
    let user: User
}
