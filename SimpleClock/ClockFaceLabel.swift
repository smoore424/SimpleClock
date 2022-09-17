//
//  ClockFaceLabel.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/17/22.
//

import UIKit

import UIKit

class ClockFaceLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createLabel() {
        font = UIFont.boldSystemFont(ofSize: 120)
        textColor = UIColor.systemTeal
        textAlignment = .center
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
