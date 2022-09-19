//
//  Helpers+Extensions.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/17/22.
//

import UIKit

extension UIView {
    func TAMIC() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leftAnchor.constraint(equalTo: superView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: superView.rightAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}
