//
//  VideoPreviewImage.swift
//  buildnetflix2
//
//  Created by Mohit Gupta on 01/02/22.
//

import SwiftUI
import KingfisherSwiftUI

struct VideoPreviewImage: View {
    var imageURL : URL
    var videoURL : URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack{
            KFImage(imageURL)
                .resizable()
                .aspectRatio( contentMode: .fit)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
                .sheet(isPresented: $showingVideoPlayer,content: {
                    SwiftUIVideoView(url: videoURL)
                })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImage(imageURL: exampleImageURL, videoURL: exampleVideoURL)
    }
}
