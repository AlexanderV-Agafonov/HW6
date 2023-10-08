//
//  WelcomeViewController.swift
//  autor
//
//  Created by Alexander Agafonov on 08.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    var showName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, \(showName ?? "Мамкин хакер")."
        


    }
    

    

}
