//
//  ViewController.swift
//  Hola-Mundo
//
//  Created by Miguel Mexicano Herrera on 18/11/25.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    lazy var increaseLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var increaseButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.white, for: .normal)
        button.setTitle("Increase", for: .normal)
        button.addTarget(self, action: #selector(increase), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(increaseButton)
        view.addSubview(increaseLabel)
        NSLayoutConstraint.activate([
            increaseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            increaseButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            increaseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            increaseLabel.bottomAnchor.constraint(equalTo: increaseButton.topAnchor, constant: -15)
        ])
        
    }
    
    @objc func increase() {
        counter += 1
        increaseLabel.text = "\(counter)"
        //print("Increase Action")
    }

}

