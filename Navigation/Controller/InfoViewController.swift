//
//  InfoViewController.swift
//  Navigation
//
//  Created by Sergey Omelchenko on 24.09.2021.
//

import UIKit

class InfoViewController: UIViewController {
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemIndigo
        self.button.backgroundColor = .systemRed
        
        button.frame = CGRect(x: 130, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        view.addSubview(button)
        
    }
    @objc func tap() {
        let alert = UIAlertController(title: "Ban", message: "You are banned", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("Ok")
        }
        let backAction = UIAlertAction(title: "No,please", style: .cancel) { _ in
            print("Ban")
        }
        
        alert.addAction(okAction)
        alert.addAction(backAction)
        present(alert, animated: true, completion: nil)
    }
}
