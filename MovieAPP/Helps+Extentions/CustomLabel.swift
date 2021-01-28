//
//  CustomLabel.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import UIKit

extension UILabel {
    @discardableResult
    func configureLabel(text: String,color: UIColor,font: String,fontSize: CGFloat) -> UILabel {
        self.text = text
        self.textColor = color
        self.font = UIFont(name: font, size: fontSize)
        return UILabel()
    }
}
