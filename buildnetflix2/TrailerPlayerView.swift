//
//  TrailerPlayerView.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 10/02/22.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    var videoURL : URL?
    
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        }
        else{
            Text("Could not load Video")
        }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(videoURL: nil, playVideo: .constant(true))
    }
}
