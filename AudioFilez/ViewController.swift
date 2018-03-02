//
//  ViewController.swift
//  AudioFilez
//
//  Created by Victor Bak on 2018-02-22.
//  Copyright © 2018 BCIT. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    //URL to audio file
    var path = Bundle.main.path(forResource: "juice", ofType: "mp3")

    @IBOutlet weak var button: UIButton!
    var isPlaying = false
    override func viewDidLoad() {
        super.viewDidLoad()
        //Attempts to load the file
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
        } catch {
            // Error: File not loaded
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPlay(_ sender: Any) {
        //changes button to a play or pause button if sound is playing or not
        if isPlaying == false {
            player.play()
            button.setTitle("Pause", for: .normal)
            isPlaying = true
        } else {
            player.pause()
            button.setTitle("Play", for: .normal)
            isPlaying = false
        }
    }
    
}

