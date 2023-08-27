//
//  MoreViewController.swift
//  AboutMeApp
//
//  Created by lsvard on 26.08.2023.
//

import UIKit

final class MoreViewController: UIViewController {
    @IBOutlet var infoTextView: UITextView!
    
    var user = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        navigationItem.title = user.fullName
        infoTextView.text = user.more
        infoTextView.backgroundColor = .clear
        infoTextView.textColor = .white

        navigationItem.backBarButtonItem = UIBarButtonItem(title: user.fullName)
    }
//    var user: User!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addVerticalGradient()
//        title = "\(user.person.fullName) Bio"
//        infoTextView.backgroundColor = .clear
//        infoTextView.textColor = .white
//        infoTextView.text = user.person.more
//    }
    
}
