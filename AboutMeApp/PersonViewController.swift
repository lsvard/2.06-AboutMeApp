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
    
    @IBOutlet var personImage: UIImageView!
    
    private let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        getPerson()
        navigationItem.title = person.fullName
    }
    
    override func viewWillLayoutSubviews() {
        personImage.layer.cornerRadius = 10
        //personImage.layer.cornerRadius = personImage.frame.width / 2 
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
