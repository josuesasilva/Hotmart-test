//
//  NSLocalizedString.swift
//  hotmart-test
//
//  Created by Josué on 05/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

let LocalizedString = _LocalizedString()

class _LocalizedString: NSObject {
    
    func foKey(key: String) -> String {
        return Bundle.main.localizedString(forKey: key, value: "", table: nil)
    }
}
