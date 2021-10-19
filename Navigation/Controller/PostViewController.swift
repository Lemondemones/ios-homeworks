//
//  PostViewController.swift
//  Navigation
//
//  Created by Sergey Omelchenko on 24.09.2021.
//

import UIKit

class PostViewController: UIViewController {
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemOrange
        self.title = text
        
        let barButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tap))
        navigationItem.rightBarButtonItem = barButton
        
    }
    
    @objc func tap() {
        let infoVC = InfoViewController()
        navigationController?.present(infoVC,animated: true)
    }
}

