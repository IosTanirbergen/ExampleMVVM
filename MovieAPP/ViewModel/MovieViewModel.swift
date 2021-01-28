//
//  MovieViewModel.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import Foundation

class MovieViewModel {
    
    var items: [Results] = []
    
    // MARK: = Init
    private var dataManager: Service!
    
    init(dataManager: Service) {
        self.dataManager = dataManager
    }
    
    // MARK: - Fetch
    func fetch(comp: @escaping() -> Void) {
        DispatchQueue.main.async {
            self.dataManager.getMovieData { [weak self] (items) in
                guard let stongSelf = self else { return }
                stongSelf.items = items
                comp()
            }
        }
    }
}
