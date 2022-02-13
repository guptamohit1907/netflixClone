//
//  Trailer.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 01/02/22.
//

import Foundation

struct Trailer : Identifiable, Hashable{
    var id : String = UUID().uuidString
    var name : String
    var videoURL : URL
    var thumbnailImageURL : URL
    
}
