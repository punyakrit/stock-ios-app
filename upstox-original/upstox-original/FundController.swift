//
//  FundController.swift
//  upstox-original
//
//  Created by Punyakrit Singh Makhni on 08/11/23.
//

import UIKit
import AVKit
import AVFoundation

class FundController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func tableBtn(_ sender: Any) {
        performSegue(withIdentifier: "table", sender: nil)
    }
    
    
    @IBAction func calButton(_ sender: Any) {
        performSegue(withIdentifier: "sip", sender: nil)

    }
    
    @IBAction func playVideo(_ sender: Any) {
        guard let videoURL = Bundle.main.url(forResource: "fund", withExtension: "mp4") else {
                    return
                }

                let player = AVPlayer(url: videoURL)
                let playerViewController = AVPlayerViewController()
                playerViewController.player = player

                present(playerViewController, animated: true) {
                    player.play()
                }
    }
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var segy: UISegmentedControl!
    
    @IBAction func segmentBT(_ sender: Any) {
        let x = segy.selectedSegmentIndex
        switch x {
        case 0:
            img.image = UIImage(named: "profit")
        case 1:
            img.image = UIImage(named: "loss")
        default :
            img.image = UIImage(named: "")
        }
    }
    
    

    

}
