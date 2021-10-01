//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Sergey Omelchenko on 27.09.2021.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    let header = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        self.view.addSubview(header)
        header.addView()
    }
    
    override func viewWillLayoutSubviews() {
        guard let navigationController = navigationController else { return }
                 header.frame = CGRect(x: view.frame.minX,y: view.frame.minY +  navigationController.navigationBar.frame.maxY,width: view.frame.width,height: view.frame.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom)
    }
}
