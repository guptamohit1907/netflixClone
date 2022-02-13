//
//  ComingSoonVM.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 09/02/22.
//

import Foundation
class ComingSoonVM : ObservableObject {
    @Published var movies: [Movie] = []
    
    init(){
        self.movies = generateMovies(20)
    }
}
