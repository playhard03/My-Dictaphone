//
//  ViewController.swift
//  Dictaphone
//
//  Created by Андрей Сергеевич on 11.04.2023.
//

import UIKit
import AVFoundation
import AVFAudio

class ViewController: UIViewController, AVAudioRecorderDelegate {
    
   
    @IBOutlet weak var textLabel: UILabel!
    let audioPlayer = AudioRecorder()
    var audioRecorder: AVAudioRecorder?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        audioPlayer.stopRecording()
        textLabel.text = "Запись окончена"
    }
    @IBAction func recordingButton(_ sender: UIButton) {
        audioPlayer.startRecording()
        textLabel.text = "Идет запись - говорите!"
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        audioPlayer.playRecordedAudio()
        textLabel.text = "Слушаем запись"
    }
    
}

