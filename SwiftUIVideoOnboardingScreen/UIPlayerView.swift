//File: UIPlayerView.swift
//Project: SwiftUIVideoOnboardingScreen

//Created at 24.04.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for free SwiftUI tutorials & more

import AVKit
import SwiftUI

class UIVideoPlayer: UIView {
    
    var playerLayer = AVPlayerLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        guard let url = URL(string: "https://www.dropbox.com/s/6kcmbmfyos6x4zv/DK.mp4?dl=0") else { return }

        let player = AVPlayer(url: url)
        player.isMuted = true
        player.play()
      
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        
        layer.addSublayer(playerLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

struct PlayerView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVideoPlayer {
        return UIVideoPlayer()
    }

    func updateUIView(_ uiView: UIVideoPlayer, context: Context) {
        
    }
}
