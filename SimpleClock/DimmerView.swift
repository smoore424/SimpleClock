//
//  DimmerView.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/17/22.
//

import UIKit

class DimmerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView() {
        backgroundColor = .black.withAlphaComponent(0.6)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
