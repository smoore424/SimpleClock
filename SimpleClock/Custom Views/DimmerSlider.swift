//
//  DimmerSlider.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/18/22.
//

import UIKit

class DimmerSlider: UISlider {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSlider()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createSlider() {
        tintColor = Colors.shared.gray
        minimumValue = 0.2
        maximumValue = 1
        
        translatesAutoresizingMaskIntoConstraints = false
        
        widthAnchor.constraint(equalToConstant: 100).isActive = true
        heightAnchor.constraint(equalToConstant: 20).isActive = true
    }

}
