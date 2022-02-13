//
//  StandardHomeMovie.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 27/01/22.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie : Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)            
    }
}
