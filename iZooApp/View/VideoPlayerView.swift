//
//  VideoPlayer.swift
//  iZooApp
//
//  Created by Elfana Anamta Chatya on 09/02/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String

    
    var body: some View {
        VStack {
            if let player = playVideo(fileName: videoSelected, fileFormat: "mp4") {
                           VideoPlayer(player: player)
                               .overlay(
                                   Image("logo")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: 32, height: 32)
                                       .padding(.top, 6)
                                       .padding(.horizontal, 8)
                                   ,alignment: .topLeading
                                   )
            } else {
                Text("Unable to play video")
                    .foregroundColor(.red)
            }
                           
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "cheetah", videoTitle: "Lion")
        }
    }
}
