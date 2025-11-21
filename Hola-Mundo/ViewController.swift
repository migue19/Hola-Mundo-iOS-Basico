//
//  ViewController.swift
//  Hola-Mundo
//
//  Created by Miguel Mexicano Herrera on 18/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    let constante = "hola"
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        counterLabel.textColor = .white
        // Do any additional setup after loading the view.
    }

    @IBAction func increaseAction(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        print("increaseAction")
    }
}

