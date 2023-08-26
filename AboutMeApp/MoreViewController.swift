//
//  MoreViewController.swift
//  AboutMeApp
//
//  Created by lsvard on 26.08.2023.
//

import UIKit

final class MoreViewController: UIViewController {
    @IBOutlet var infoLabel: UILabel!
    
    private let info = Person.getMoreInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradienViewColor(topColor: firstColor, bottomColor: secondColor)
        navigationItem.title = info.fullName
        infoLabel.text = info.more
        navigationItem.backBarButtonItem = UIBarButtonItem(title: info.fullName)
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
    private func setGradienViewColor(topColor: UIColor, bottomColor: UIColor) {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [topColor.cgColor, bottomColor.cgColor]
        view.layer.insertSublayer(layer, at: 0)
    }
}
