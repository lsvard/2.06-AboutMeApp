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
        getSpiritualPerson()
        setGradienViewColor(topColor: firstColor, bottomColor: secondColor)
        navigationItem.title = person.name
    }
    
    // MARK: Private methods
    private func getSpiritualPerson() {
        spiritualNameLabel.text = person.name
        spiritualAgeLabel.text = person.age
        cityLabel.text = person.city
        teacherLabel.text = person.teacher
    }
    
    private func setGradienViewColor(topColor: UIColor, bottomColor: UIColor) {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [topColor.cgColor, bottomColor.cgColor]
        view.layer.insertSublayer(layer, at: 0)
    }
}
