//
//  HomeVM.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 27/01/22.
//

import Foundation
import SwiftUI

class HomeVM : ObservableObject {
    // String == Category
    @Published var movies : [String : [Movie]] = [:]
    
    public var allCategories : [String] {
        return movies.keys.map({ String($0) })
    }
    
    public var allGenre : [HomeGenre] = [.AllGenres , .Action , .Comedy , .Horror , .Thriller]
    
    
    public func getMovie(forCat cat : String , andHomeRow homeRow : HomeTopRow , andGenre genre : HomeGenre) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre) })
        case .tvShows:
            return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre) })
        case .myList:
            return movies[cat] ?? []
            // TODO : Setup MyList Properly
        }
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies(){
      movies["Watch It Again"] = exampleMovies
      movies["New Releases"] = exampleMovies.shuffled()
      movies["Stand-Up Comedy"] = exampleMovies.shuffled()
      movies["Trending Now"] = exampleMovies.shuffled()
      movies["Sci-Fi Movies"] = exampleMovies.shuffled()

    }
    
}
