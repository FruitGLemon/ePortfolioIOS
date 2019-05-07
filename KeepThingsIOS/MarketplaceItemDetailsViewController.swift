//
//  MarketplaceItemDetailsViewController.swift
//  KeepThingsIOS
//
//  Created by Nils Braun on 07.05.19.
//  Copyright © 2019 Nils Braun. All rights reserved.
//

import UIKit

class MarketplaceItemDetailsViewController: UIViewController {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDesc: UILabel!
    @IBOutlet weak var itemOwner: UILabel!
    @IBOutlet weak var itemFrom: UILabel!
    @IBOutlet weak var itemTo: UILabel!
    
    var marketplaceItem: MarketplaceItem?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Details"
        itemName.text = marketplaceItem?.ITEM_NAME
        itemDesc.text = marketplaceItem?.ITEM_DESC
        itemOwner.text = marketplaceItem?.OWNER
        itemFrom.text = marketplaceItem?.DATE_FROM
        itemTo.text = marketplaceItem?.DATE_TO
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
