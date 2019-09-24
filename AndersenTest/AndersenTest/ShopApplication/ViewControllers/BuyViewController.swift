//
//  BuyViewController.swift
//  AndersenTest
//
//  Created by admin on 24.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var buyArray: [ShopModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
               tableView.register(UINib(nibName: "BuyCell", bundle: nil), forCellReuseIdentifier: "BuyCell")
               tableView.delegate = self
               tableView.dataSource = self
               tableView.reloadData()
    }
    
    @IBAction func didTapPushPopVCButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension BuyViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BuyCell", for: indexPath) as! BuyCell
        cell.update(item: buyArray[indexPath.row])
        return cell
    }
}
