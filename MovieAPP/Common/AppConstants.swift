//
//  AppConstants.swift
//  MovieAPP
//
//  Created by Tanirbergen Kaldibai on 29.01.2021.
//

import Foundation

let movieID = "MOVIEID"

struct AppConstants {
    //https://api.themoviedb.org/3/discover/movie?api_key=210e2b075f370d9cf11509de665a1272
    static let scheme     = "https://"
    static let host       = "api.themoviedb.org/"
    static let path       = "3/discover/movie?"
    static let parameters = "api_key=210e2b075f370d9cf11509de665a1272"
    static let baseURL    = AppConstants.scheme + AppConstants.host + AppConstants.path + AppConstants.parameters
    
    struct Movie {
        static let numberOfRows = 15
        static let hightForRows = 75 
    }
}
