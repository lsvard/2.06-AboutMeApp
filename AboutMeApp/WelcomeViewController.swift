//
//  greetingViewController.swift
//  AboutMeApp
//
//  Created by l.s.vard on 13.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var helloLabel: UILabel!
    
    var person = Person.getPerson()
    
    private let firstColor = UIColor(
        red: (203/255.0),
        green: (128/255.0),
        blue:(153/255.0),
        alpha: 1
    )
    
    private let secondColor = UIColor(
        red: (122/255.0),
        green: (160/255.0),
        blue:(233/255.0),
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradienViewColor(topColor: firstColor, bottomColor: secondColor)
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

