//
//  Extension + UIView.swift
//  AboutMeApp
//
//  Created by lsvard on 27.08.2023.
//

import UIKit

// MARK: - Set background color
extension UIView {
    func addVerticalGradient() {
        let primaryColor = UIColor(
            red: (203/255.0),
            green: (128/255.0),
            blue:(153/255.0),
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: (122/255.0),
            green: (160/255.0),
            blue:(233/255.0),
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primaryColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
