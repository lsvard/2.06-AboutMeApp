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
        view.addVerticalGradient()
        navigationItem.title = info.fullName
        infoLabel.text = info.more
        navigationItem.backBarButtonItem = UIBarButtonItem(title: info.fullName)
    }
}
