//
//  ShopViewController.swift
//  AndersenTest
//
//  Created by admin on 24.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var shopModel: [ShopModel] = []
    var buyArray: [ShopModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        tableView.register(UINib(nibName: "ItemCell", bundle: nil), forCellReuseIdentifier: "ItemCell")
        shopModel = putDataShopModel()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    @IBAction func didTapPushBuyVCButton(_ sender: Any) {
    let vc = storyboard?.instantiateViewController(withIdentifier: "BuyViewController") as! BuyViewController
    vc.buyArray = buyArray
    self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ShopViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        cell.index = indexPath.row
        cell.delegate = self
        cell.update(item: shopModel[indexPath.row])
        return cell
    }
}

extension ShopViewController: ItemCellDelegate {
    func toBuyList(index: Int) {
        buyArray.append(shopModel[index])
    }
}
