//
//  ViewController.swift
//  Hola-Mundo
//
//  Created by Miguel Mexicano Herrera on 18/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblCounter: UILabel!
    var counter: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    @IBAction func increaseAction(_ sender: Any) {
        counter += 1
        print("Hola \(counter)")
        lblCounter.text = "\(counter)"
    }
}

