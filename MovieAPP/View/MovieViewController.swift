//
//  ViewController.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import UIKit

class MovieViewController: UIViewController {
    
    var viewModel: MovieViewModel
    
    init(viewModel: MovieViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: - Closure
    private var movieTableView: UITableView = {
        let tb = UITableView(frame: .zero, style: .grouped)
        return tb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationBar()
        updataData()
    }
    
    fileprivate func setupTableView() {
        view.addSubview(movieTableView)
        movieTableView.register(MovieTableViewCell.self, forCellReuseIdentifier: movieID)
        movieTableView.delegate = self
        movieTableView.dataSource = self
        movieTableView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor)
    }
    
    fileprivate func setupNavigationBar() {
        configureNavBar(isHidden: false, navBarColor: .cyan, navTitle: "MovieApp")
    }
    
    // MARK: - UpLoadData
    private func updataData() {
        viewModel.fetch { [weak self] in
            DispatchQueue.main.async {
                guard let strongSelf = self else { return }
                strongSelf.movieTableView.reloadData()
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

