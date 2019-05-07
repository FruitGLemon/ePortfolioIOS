//
//  MarketplaceItemViewController.swift
//  KeepThingsIOS
//
//  Created by Nils Braun on 01.04.19.
//  Copyright © 2019 Nils Braun. All rights reserved.
//

import UIKit

class MarketplaceItemViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var marketplaceItem1 = MarketplaceItem(ITEM_ID: 1, ITEM_NAME: "Laptop", ITEM_DESC: "Gebrauchtes Laptop", OWNER: "Nils", DATE_FROM: "27-09-2019", DATE_TO: "27-10-2019")
    var marketplaceItem2 = MarketplaceItem(ITEM_ID: 2, ITEM_NAME: "Kopfhörer", ITEM_DESC: "Neue Kopfhörer", OWNER: "Nils", DATE_FROM: "17-03-2019", DATE_TO: "03-04-2019")
    var marketplaceItem3 = MarketplaceItem(ITEM_ID: 3, ITEM_NAME: "Uhr", ITEM_DESC: "Gebrauchte Uhr", OWNER: "Nils", DATE_FROM: "27-09-2019", DATE_TO: "27-10-2019")
    var marketplaceItem4 = MarketplaceItem(ITEM_ID: 4, ITEM_NAME: "Armband", ITEM_DESC: "Neues Armabnd", OWNER: "Nils", DATE_FROM: "17-03-2019", DATE_TO: "03-04-2019")
    
    lazy var marketplaceItems = [marketplaceItem1, marketplaceItem2, marketplaceItem3, marketplaceItem4]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marketplaceItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "marketplaceItems", for: indexPath)
        cell.textLabel?.text = marketplaceItems[indexPath.row].ITEM_NAME
        cell.accessoryType = .disclosureIndicator
        cell.detailTextLabel?.text = "\(marketplaceItems[indexPath.row].DATE_FROM) - \(marketplaceItems[indexPath.row].DATE_TO)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
        let vc = storyboard?.instantiateViewController(withIdentifier: "marketplaceItemDetail") as? MarketplaceItemDetailsViewController
        vc?.marketplaceItem = marketplaceItems[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Marketplace Items"
        
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
