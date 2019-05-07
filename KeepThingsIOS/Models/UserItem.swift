//
//  UserItem.swift
//  KeepThingsIOS
//
//  Created by Nils Braun on 02.04.19.
//  Copyright © 2019 Nils Braun. All rights reserved.
//

import Foundation

class UserItem {
    
    var ITEM_ID: Int
    var ITEM_NAME: String
    var ITEM_DESC: String
    var OWNER: String
    var BORROWER: String
    var DATE_FROM: String
    var DATE_TO: String
    
    init(ITEM_ID: Int, ITEM_NAME: String, ITEM_DESC: String, OWNER: String, BORROWER: String, DATE_FROM:String, DATE_TO:String) {
        self.ITEM_ID = ITEM_ID
        self.ITEM_NAME = ITEM_NAME
        self.ITEM_DESC = ITEM_DESC
        self.OWNER = OWNER
        self.BORROWER = BORROWER
        self.DATE_FROM = DATE_FROM
        self.DATE_TO = DATE_TO
    }
    
}

