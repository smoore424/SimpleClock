//
//  Helpers+Extensions.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/17/22.
//

import UIKit

extension NSLayoutConstraint {
    func activate() {
        isActive = true
    }
}

extension UIView {
    func TAMIC() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).activate()
        leftAnchor.constraint(equalTo: superView.leftAnchor).activate()
        rightAnchor.constraint(equalTo: superView.rightAnchor).activate()
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).activate()
    }
}
