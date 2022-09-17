//
//  ClockViewController.swift
//  SimpleClock
//
//  Created by Stacey Moore on 9/17/22.
//

import UIKit

class ClockViewController: UIViewController {

    var clockLabel = ClockFaceLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.overrideUserInterfaceStyle = .dark
        UIScreen.main.wantsSoftwareDimming = true
        UIScreen.main.brightness = 0.0
        createClockUI()
        dimView()
        createSettingsButton()
    }

    private func createClockUI() {
        view.addSubview(clockLabel)
        clockLabel.pin(to: view)
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            
            let date = Date()
            print("date is \(date)")
            let dateFormatter = DateFormatter()
            
            dateFormatter.dateFormat = "hh:mm a"
            
            let currentTime = dateFormatter.string(from: date)
            
            self.clockLabel.text = currentTime
        }
    }
    
    private func dimView() {
        let translucentView = DimmerView()
        view.addSubview(translucentView)
        translucentView.pin(to: view)
    }
    
    private func createSettingsButton() {
        let button = DimmerButton()
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).activate()
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).activate()
        
        button.addTarget(self, action: #selector(settingsButtonTapped), for: .touchUpInside)
    }
    
    @objc func settingsButtonTapped() {
        print("settings tapped")
    }
}
