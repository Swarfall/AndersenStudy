//
//  ExtensionProtocol.swift
//  AndersenTest
//
//  Created by admin on 25.09.2019.
//  Copyright © 2019 Viacheslav Savitsky. All rights reserved.
//

import Foundation

protocol Study {
    func read()
}

extension Study {
    func read() {
        print("read some guide")
    }
}
