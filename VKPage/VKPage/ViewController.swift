//
//  ViewController.swift
//  VKPage
//
//  Created by Alsu Shigapova on 29.09.17.
//  Copyright © 2017 Alsu Shigapova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var onlineStatus: UILabel!
    @IBOutlet weak var yearsOld: UILabel!
    @IBOutlet weak var numberOfFriends: UIButton!
    @IBOutlet weak var numberOfSubscribers: UIButton!
    @IBOutlet weak var numberOfGroups: UIButton!
    @IBOutlet weak var numberOfPhotos: UIButton!
    @IBOutlet weak var numberOfPhotosLabel: UILabel!
    @IBOutlet weak var numberOfVideo: UIButton!
    @IBOutlet weak var numberOfAudio: UIButton!
    @IBOutlet weak var numberOfGifts: UIButton!
    @IBOutlet weak var nameOfGifts: UIButton!
    @IBOutlet weak var numberOfFiles: UIButton!
    @IBOutlet weak var nameOfFiles: UIButton!
    
    var randomStatus = Int()
    var randomAge = Int()
    var randomNumberOfFriends = Int()
    var randomNumberOfSubscribers = Int()
    var randomNumberOfGroups = Int()
    var randomNumberOfPhotos = Int()
    var randomNumberOfVideo = Int()
    var randomNumberOfAudio = Int()
    var randomNumberOfGifts = Int()
    var randomNumberOfFiles = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomStatus = Int(arc4random_uniform(2))
        if randomStatus == 1 {
            self.onlineStatus.text = "online (моб.)"
        }
        else {
            self.onlineStatus.text = "offline"
        }
        
        randomAge = Int(arc4random_uniform(21) + 15)
        if randomAge % 10 == 1 {
            self.yearsOld.text = String(randomAge) + " год, Казань"
        }
        else {
            if (randomAge % 10 == 2) || (randomAge % 10 == 3) || (randomAge % 10 == 4) {
                self.yearsOld.text = String(randomAge) + " года, Казань"
            }
            else {
                self.yearsOld.text = String(randomAge) + " лет, Казань"
            }
        }
        
        randomNumberOfFriends = Int(arc4random_uniform(49) + 600)
        numberOfFriends.setTitle(String(randomNumberOfFriends), for: .normal)
        
        randomNumberOfSubscribers = Int(arc4random_uniform(500) + 400)
        numberOfSubscribers.setTitle(String(randomNumberOfSubscribers), for: .normal)
        
        randomNumberOfGroups = Int(arc4random_uniform(234) + 11)
        numberOfGroups.setTitle(String(randomNumberOfGroups), for: .normal)
        
        randomNumberOfPhotos = Int(arc4random_uniform(123) + 13)
        numberOfPhotos.setTitle(String(randomNumberOfPhotos), for: .normal)
        if (randomNumberOfPhotos % 10 == 2) || (randomNumberOfPhotos % 10 == 3) || (randomNumberOfPhotos % 10 == 4) {
            self.numberOfPhotosLabel.text = String(randomNumberOfPhotos) + " фотографии"
        }
        else {
            self.numberOfPhotosLabel.text = String(randomNumberOfPhotos) + " фотографий"
        }
        
        randomNumberOfVideo = Int(arc4random_uniform(342) + 20)
        numberOfVideo.setTitle(String(randomNumberOfVideo), for: .normal)
        
        randomNumberOfAudio = Int(arc4random_uniform(1300) + 200)
        numberOfAudio.setTitle(String(randomNumberOfAudio), for: .normal)
        
        randomNumberOfGifts = Int(arc4random_uniform(41) + 5)
        numberOfGifts.setTitle(String(randomNumberOfGifts), for: .normal)
        if randomNumberOfGifts % 10 == 1 {
            nameOfGifts.setTitle(" подарок", for: .normal)
        }
        else {
            if (randomNumberOfGifts % 10 == 2) || (randomNumberOfGifts % 10 == 3) || (randomNumberOfGifts % 10 == 4) {
                nameOfGifts.setTitle(" подарка", for: .normal)
            }
            else {
                nameOfGifts.setTitle(" подароков", for: .normal)
            }
        }
        
        randomNumberOfFiles = Int(arc4random_uniform(127) + 12)
        numberOfFiles.setTitle(String(randomNumberOfFiles), for: .normal)
        if randomNumberOfFiles % 10 == 1 {
            nameOfFiles.setTitle(" файл", for: .normal)
        }
        else {
            if (randomNumberOfFiles % 10 == 2) || (randomNumberOfFiles % 10 == 3) || (randomNumberOfFiles % 10 == 4) {
                nameOfFiles.setTitle(" файла", for: .normal)
            }
            else {
                nameOfFiles.setTitle(" файлов", for: .normal)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

