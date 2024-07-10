//
//  MainViewModel.swift
//  ArchitectureMVVM
//
//  Created by Janam Soni on 08/07/24.
//

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        5
    }
    
    func getData() {
        ApiCaller.getTrendingMovies { result in
            switch result {
            case .success(let data):
                print("Top trending counts: \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
}
