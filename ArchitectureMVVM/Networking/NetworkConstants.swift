//
//  NetworkConstants.swift
//  ArchitectureMVVM
//
//  Created by Janam Soni on 08/07/24.
//

import Foundation

class NetworkConstants {
    
    public static var shared: NetworkConstants = NetworkConstants()
    
    private init() {
        //Singleton
    }
    
    public var apiKey: String {
        get {
            //API key
            return "8739de6adc0e5abe8f4fee311727927f"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
