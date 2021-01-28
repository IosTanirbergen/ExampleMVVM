//
//  NetworkingService.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import Foundation
import Alamofire

protocol NetworkingService {
    func getMovieData(comp: @escaping(_ data: [Results]) -> ())
}

// MARK: - DataManager
final class Service: NetworkingService {
    
    func getMovieData(comp: @escaping ([Results]) -> ()) {
        AF.request(AppConstants.baseURL,method: .get,parameters: nil).response {
            result in
            switch result.result {
            case .success(let data):
                do {
                    let result = try JSONDecoder().decode(Movie.self, from: data!)
                    DispatchQueue.main.async {
                        comp(result.results!)
                    }
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let err):
                print(err.localizedDescription)
            }
        }
    }
}
