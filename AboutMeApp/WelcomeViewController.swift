//
//  greetingViewController.swift
//  AboutMeApp
//
//  Created by l.s.vard on 13.08.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}

