//
//  ApiCaller.swift
//  ArchitectureMVVM
//
//  Created by Janam Soni on 08/07/24.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

public class ApiCaller {
        
    static func getTrendingMovies(
        completionHandler: @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void
    ) {
        
        let urlString = NetworkConstants.shared.serverAddress +
        "trending/all/day?api_key=" +
        NetworkConstants.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }

        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            if error == nil,
                let data = dataResponse,
               let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data) {
                completionHandler(.success(resultData))
            } else {
                completionHandler(.failure(.canNotParseData))
            }
            
        }.resume()
        
    }
}
