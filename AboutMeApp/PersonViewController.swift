//
//  PersonViewController.swift
//  AboutMeApp
//
//  Created by lsvard on 24.08.2023.
//

import UIKit

class PersonViewController: UIViewController {
    
    private let person = Person.getPerson()

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    @IBOutlet var personImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getPerson()
        setGradienViewColor(topColor: firstColor, bottomColor: secondColor)
        navigationItem.title = person.fullName
    }
    
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
    
    // MARK: Private methods
    private func getPerson() {
        nameLabel.text = person.name
        ageLabel.text = person.age
        cityLabel.text = person.city
        hobbyLabel.text = person.hobby
        personImage.image = UIImage(named: person.photo)
    }
    
    private func setGradienViewColor(topColor: UIColor, bottomColor: UIColor) {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [topColor.cgColor, bottomColor.cgColor]
        view.layer.insertSublayer(layer, at: 0)
    }
}
