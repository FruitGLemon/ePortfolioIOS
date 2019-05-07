//
//  UserItemDetailsViewController.swift
//  KeepThingsIOS
//
//  Created by Nils Braun on 02.04.19.
//  Copyright © 2019 Nils Braun. All rights reserved.
//

import UIKit

class UserItemDetailsViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDesc: UILabel!
    @IBOutlet weak var itemOwner: UILabel!
    @IBOutlet weak var itemBorrower: UILabel!
    @IBOutlet weak var itemFrom: UILabel!
    @IBOutlet weak var itemTo: UILabel!
    
    var userItem: UserItem?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Details"
        itemName.text = userItem?.ITEM_NAME
        itemDesc.text = userItem?.ITEM_DESC
        itemOwner.text = userItem?.OWNER
        itemBorrower.text = userItem?.BORROWER
        itemFrom.text = userItem?.DATE_FROM
        itemTo.text = userItem?.DATE_TO
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
