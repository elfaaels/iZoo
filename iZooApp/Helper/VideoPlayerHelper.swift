//
//  VideoPlayerHelper.swift
//  iZooApp
//
//  Created by Elfana Anamta Chatya on 09/02/24.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
    guard let url: URL = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        return nil
    }
    
    let videoPlayer: AVPlayer = AVPlayer(url: url)
    
    videoPlayer.play()
    return videoPlayer
}
