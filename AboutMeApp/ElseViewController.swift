//
//  SpiritualPersonViewController.swift
//  AboutMeApp
//
//  Created by lsvard on 26.08.2023.
//

import UIKit

final class ElseViewController: UIViewController {
    @IBOutlet var spiritualNameLabel: UILabel!
    @IBOutlet var spiritualAgeLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var teacherLabel: UILabel!
    
    private let person = Person.getSpiritualPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        getSpiritualPerson()
        navigationItem.title = person.name
    }
    
    // MARK: Private methods
    private func getSpiritualPerson() {
        spiritualNameLabel.text = person.name
        spiritualAgeLabel.text = person.age
        cityLabel.text = person.city
        teacherLabel.text = person.teacher
    }
}
