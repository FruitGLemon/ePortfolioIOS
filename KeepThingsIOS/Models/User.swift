//
//  User.swift
//  KeepThingsIOS
//
//  Created by Nils Braun on 02.04.19.
//  Copyright © 2019 Nils Braun. All rights reserved.
//

import Foundation

class User {
    var USER_ID: Int
    var NAME: String
    var FIRST_NAME: String
    var PASSWORD: String
    var EMAIL: String
    var TEL_NR: Int
    var USERNAME: String
    var TYPE: String
    var VERIFIED: Bool
    
    init(USER_ID: Int, NAME: String, FIRST_NAME: String, PASSWORD: String, EMAIL: String, TEL_NR: Int, USERNAME: String, TYPE: String, VERIFIED: Bool) {
        self.USER_ID = USER_ID
        self.NAME = NAME
        self.FIRST_NAME = FIRST_NAME
        self.PASSWORD = PASSWORD
        self.EMAIL = EMAIL
        self.TEL_NR = TEL_NR
        self.USERNAME = USERNAME
        self.TYPE = TYPE
        self.VERIFIED = VERIFIED
    }
}
