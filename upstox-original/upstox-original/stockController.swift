//
//  stockController.swift
//  upstox-original
//
//  Created by Punyakrit Singh Makhni on 08/11/23.
//

import UIKit
import AVKit
import AVFoundation

class stockController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
        
    }
    
    
    @IBAction func stockBtn(_ sender: Any) {
        performSegue(withIdentifier: "table", sender: nil)
    }
    
    

    @IBAction func searchBtn(_ sender: Any) {
        performSegue(withIdentifier: "web", sender: nil)

    }
    
    
    @IBAction func playVideo(_ sender: Any) {
        guard let videoURL = Bundle.main.url(forResource: "trade", withExtension: "mp4") else {
                    return
                }

                let player = AVPlayer(url: videoURL)
                let playerViewController = AVPlayerViewController()
                playerViewController.player = player

                present(playerViewController, animated: true) {
                    player.play()
                }
    }
    
    @IBAction func tableBtn(_ sender: Any) {
        performSegue(withIdentifier: "table", sender: nil)
        
    }
    
}
