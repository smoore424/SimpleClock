//
//  DimmerButton.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/17/22.
//

import UIKit

class DimmerButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        createButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createButton() {
        translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImage(systemName: "gear")?.withTintColor(.systemGray3, renderingMode: .alwaysOriginal)
    
        setImage(image, for: .normal)
        
        heightAnchor.constraint(equalToConstant: 44).activate()
        widthAnchor.constraint(equalTo: self.heightAnchor).activate()
    }

}
