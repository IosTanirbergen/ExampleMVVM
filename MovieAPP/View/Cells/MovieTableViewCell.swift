//
//  MovieTableViewCell.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    // MARK: Constants
    private var title = UILabel()
    private var vote_average = UILabel()
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [
            title,
            vote_average
        ])
        sv.axis = .vertical
        sv.spacing = 8
        return sv
    }()

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupSubviews()
        configureSubviews()
    }
    
    fileprivate func setupSubviews() {
        addSubview(stackView)
        stackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
    fileprivate func configureSubviews() {
        title.configureLabel(text: "", color: UIColor.classicColor, font: "Heavy", fontSize: 15.0)
        vote_average.configureLabel(text: "", color: UIColor.gray, font: "Mac", fontSize: 16.0)
    }
    
    func configure(data: Results) {
        DispatchQueue.main.async {
            self.title.text = data.title
            self.vote_average.text = "\(data.vote_average ?? 0)"
        }
    }

}
