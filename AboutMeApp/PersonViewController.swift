//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by lsvard on 24.08.2023.
//

import UIKit

final class PersonViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    @IBOutlet var personImage: UIImageView! {
        didSet {
            personImage.layer.cornerRadius = personImage.frame.width / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        navigationItem.title = user.person.fullName
        nameLabel.text = user.person.name
        ageLabel.text = user.person.age
        cityLabel.text = user.person.city
        hobbyLabel.text = user.person.hobby
        personImage.image = UIImage(named: user.person.photo)
    }
}
