//
//  UserItemViewController.swift
//  KeepThingsIOS
//
//  Created by Nils Braun on 01.04.19.
//  Copyright © 2019 Nils Braun. All rights reserved.
//

import UIKit

class UserItemViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var selectedItem: UserItem?
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userItems.count
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "userItemDetail") as? UserItemDetailsViewController
        vc?.userItem = userItems[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userItems", for: indexPath)
        cell.textLabel?.text = userItems[indexPath.row].ITEM_NAME
        cell.accessoryType = .disclosureIndicator
        cell.detailTextLabel?.text = "\(userItems[indexPath.row].DATE_FROM) - \(userItems[indexPath.row].DATE_TO)"
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "User Items"
        // Do any additional setup after loading the view.
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.destination is UserItemDetailsViewController {
//            let cell = sender as! UITableViewCell
//            let index = tableView.indexPath(for: cell)
//                let vc = segue.destination as? UserItemDetailsViewController
//            if let indexPath = index?.row {
//                vc!.userItem = userItems[indexPath]
//            }else{
//                print("unlucky")
//            }
//
//
//
//        }
//    }
    
   var userItem1 = UserItem(ITEM_ID: 1, ITEM_NAME: "Laptop", ITEM_DESC: "Gebrauchtes Laptop", OWNER: "Nils", BORROWER: "Lulas", DATE_FROM: "27-09-2019", DATE_TO: "27-10-2019")
    var userItem2 = UserItem(ITEM_ID: 1, ITEM_NAME: "Kopfhörer", ITEM_DESC: "Neue Kopfhörer", OWNER: "Nils", BORROWER: "Lukas", DATE_FROM: "17-03-2019", DATE_TO: "03-04-2019")
    lazy var userItems = [userItem1, userItem2]
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
