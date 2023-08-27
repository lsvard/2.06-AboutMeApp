//
//  greetingViewController.swift
//  AboutMeApp
//
//  Created by l.s.vard on 13.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var person = Person.getPerson()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        welcomeLabel.text = "Welcome, \(person.fullName)!"
    }
    
    // MARK: - Private Methods
    private func setGradienViewColor(topColor: UIColor, bottomColor: UIColor) {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [topColor.cgColor, bottomColor.cgColor]
        view.layer.insertSublayer(layer, at: 0)
    }
}

