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
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        getPerson()
        navigationItem.title = person.fullName
    }
    
    // MARK: Private methods
    private func getPerson() {
        nameLabel.text = person.name
        ageLabel.text = person.age
        cityLabel.text = person.city
        hobbyLabel.text = person.hobby
        personImage.image = UIImage(named: person.photo)
    }
}
