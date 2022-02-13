//
//  PreviewVM.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 10/02/22.
//

import Foundation

class PreviewVM: ObservableObject{
    var movie : Movie
    
    init(movie: Movie){
        self.movie = movie
    }
}

