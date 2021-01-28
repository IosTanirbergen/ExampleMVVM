//
//  UIViewController.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import UIKit

extension UIViewController {
    func configureNavBar(isHidden: Bool,navBarColor: UIColor,navTitle: String) {
        self.navigationController?.navigationBar.isHidden = isHidden
        self.navigationController?.navigationBar.backgroundColor = navBarColor
        self.navigationController?.navigationItem.title = navTitle
    }
}
