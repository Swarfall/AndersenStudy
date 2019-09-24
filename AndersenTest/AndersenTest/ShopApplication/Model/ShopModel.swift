//
//  ShopModel.swift
//  AndersenTest
//
//  Created by admin on 24.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import Foundation

class ShopModel {
    
    var itemImage: String
    var itemName: String
    
    init(itemImage: String, itemName: String) {
        self.itemImage = itemImage
        self.itemName = itemName
    }
}


func putDataShopModel() -> [ShopModel] {
    let iphone6 = ShopModel(itemImage: "iphone6", itemName: "iphone6")
    let iphone7 = ShopModel(itemImage: "iphone7", itemName: "iphone7")
    let iphone8 = ShopModel(itemImage: "iphone8", itemName: "iphone8")
    let iphoneX = ShopModel(itemImage: "iphoneX", itemName: "iphoneX")
    let iphoneXR = ShopModel(itemImage: "iphoneXR", itemName: "iphoneXR")
    let iphoneXS = ShopModel(itemImage: "iphoneXS", itemName: "iphoneXS")
    
    return [iphone6, iphone7, iphone8, iphoneX, iphoneXR, iphoneXS]
}
