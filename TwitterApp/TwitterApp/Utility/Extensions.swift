//
//  Extensions.swift
//  TwitterApp
//
//  Created by Vijay Parmar on 01/11/23.
//

import Foundation
import UIKit

extension UIViewController {
    static var storyboardId: String {
        return self.className
    }
}

extension NSObject {
    public static var className: String {
        return String(describing: self)
    }
}
