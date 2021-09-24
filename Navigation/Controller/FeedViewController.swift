//
//  FeedViewController.swift
//  Navigation
//
//  Created by Sergey Omelchenko on 24.09.2021.
//

import UIKit

class FeedViewController: UIViewController {
    let button = UIButton()
    let post = Post(title: "Lama")
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBlue
        self.button.backgroundColor = .systemOrange
        
        button.frame = CGRect(x: 150, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc func tap() {
        let postVC = PostViewController()
        navigationController?.pushViewController(postVC, animated: true)
        postVC.text = post.title
        
    }
}
