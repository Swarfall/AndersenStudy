//
//  ItemCell.swift
//  AndersenTest
//
//  Created by admin on 24.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import UIKit

protocol ItemCellDelegate: class {
    func toBuyList(index: Int)
}

extension ItemCellDelegate {
    func toBuyList(index: Int) {
        print("qwerty")
        print(index)
    }
}

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameItemLabel: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    weak var delegate: ItemCellDelegate?
    var index: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func update(item: ShopModel) {
        itemImageView.image = UIImage(named: item.itemImage)
        nameItemLabel.text = item.itemName
    }
    
    @IBAction func didTapBuyButton(_ sender: Any) {
        buyButton.setTitle("Add", for: .normal)
        delegate?.toBuyList(index: index!)
    }
    
    
}
