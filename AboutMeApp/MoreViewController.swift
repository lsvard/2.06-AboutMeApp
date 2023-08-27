//
//  MoreViewController.swift
//  AboutMeApp
//
//  Created by lsvard on 26.08.2023.
//

import UIKit

final class MoreViewController: UIViewController {
    @IBOutlet var moreTextView: UITextView!
    
//    var user = Person.getPerson()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addVerticalGradient()
//        navigationItem.title = user.fullName
//        moreTextView.text = user.more
//        moreTextView.backgroundColor = .clear
//        moreTextView.textColor = .white
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: user.fullName)
//    }
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradient()
        navigationItem.title = user.person.fullName
        moreTextView.backgroundColor = .clear
        moreTextView.textColor = .white
        moreTextView.text = user.person.more
    }
}
