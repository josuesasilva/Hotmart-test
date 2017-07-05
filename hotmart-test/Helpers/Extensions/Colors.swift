//
//  Colors.swift
//  hotmart-test
//
//  Created by Josué on 04/07/17.
//  Copyright © 2017 Josué. All rights reserved.
//

import UIKit

let Colors = _Colors()

class _Colors: NSObject {
    let dashboardNavbarBackground = UIColor(string: "#d04f2a")
    let salesNavbarBackground = UIColor(string: "#4982c5")
    let messagesNavbarBackground = UIColor(string: "#e7ad45")
}

extension UIColor {
    convenience init(string: String) {
        var chars = Array(string.hasPrefix("#") ? string.characters.dropFirst() : string.characters)
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 1
        switch chars.count {
        case 3:
            chars = [chars[0], chars[0], chars[1], chars[1], chars[2], chars[2]]
            fallthrough
        case 6:
            chars = ["F","F"] + chars
            fallthrough
        case 8:
            alpha = CGFloat(strtoul(String(chars[0...1]), nil, 16)) / 255
            red   = CGFloat(strtoul(String(chars[2...3]), nil, 16)) / 255
            green = CGFloat(strtoul(String(chars[4...5]), nil, 16)) / 255
            blue  = CGFloat(strtoul(String(chars[6...7]), nil, 16)) / 255
        default:
            alpha = 0
        }
        self.init(red: red, green: green, blue:  blue, alpha: alpha)
    }
}
