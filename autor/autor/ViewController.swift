//
//  ViewController.swift
//  autor
//
//  Created by Alexander Agafonov on 08.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    private let userName = "mrAndersson"
    private let password = "wakeupneo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? WelcomeViewController else { return }
        destinationVC.showName = userName
        
    }
    
    
    @IBAction func pressButton() {
        guard let loginField = userNameField.text, let passField = passwordField.text else { return }
        if loginField != userName || passField != password {
            showAlert(title: "invalid login or password",
                      message: "Please, enter correct login and password ⛔️")
            passwordField.text = ""
            return
        }
        performSegue(withIdentifier: "goToHello", sender: nil)
        
    }
    
    
    @IBAction func pressedFargotUserName() {
        showAlert(title: "Ooops",
                  message: "It is you true name, Neo😎")
        
    }
    
    
    @IBAction func pressedFargotPassword() {
        showAlert(title: "Ooops",
                  message: "wake up, Neo😎")
        
    }
    
    @IBAction func unwindSequeViewController(seque: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
}
extension ViewController{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
}
