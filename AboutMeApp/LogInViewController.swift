//
//  ViewController.swift
//  AboutMeApp
//
//  Created by l.s.vard on 13.08.2023.
//

import UIKit

final class LogInViewController: UIViewController {
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "User"
    private let password = "1"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.user = userName
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions/
    
    @IBAction func logInButtonPressed() {
        guard userNameTF.text == userName, passwordTF.text == password else {
            showAlert(
                title: "Invalid User Name or password",
                message: "Please, enter correct User Name or password"
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegistrData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops", message: "Your User name is \(userName)")
        : showAlert(title: "Oops", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text?.removeAll()
        passwordTF.text?.removeAll()
    }
}

// MARK: - UIAlertController
extension LogInViewController {
    private func showAlert(
        title: String,
        message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//    @IBAction func forgotUserNamePressed() {
//        showAlert(
//            withTitle: "Oops",
//            andMessage: "Your User name is \(userName)"
//        )
//    }
//
//    @IBAction func forgotPasswordPressed() {
//        showAlert(
//            withTitle: "Oops",
//            andMessage: "Your password is \(password)"
//        )
//    }
//        guard let inputText = passwordTF.text, inputText == password else {
//            showAlert(
//                withTitle: "Invalid login or password",
//                andMessage: "Please, enter correct login or password"
//            )
//            return
//        }
//        guard let inputText = userNameTF.text, !inputText.isEmpty else {
//            showAlert(
//                withTitle: "User Name field is empty",
//                andMessage: "Please, enter User Name"
//            )
//            return
//        }
//
//        guard let inputText = passwordTF.text, !inputText.isEmpty else {
//            showAlert(
//                withTitle: "Password field is empty",
//                andMessage: "Please, enter password"
//            )
//            return
//        }
        
