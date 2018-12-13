//
//  RandomTrickPage.swift
//  
//
//  Created by Nick  Pullen on 12/6/18.
//

import UIKit

class RandomTrickPage: UIViewController {

    @IBOutlet weak var randomTrickLabel: UILabel!
    
    @IBOutlet weak var trickTryImage: UIImageView!

    var imageNumber = -1
    var numberOfImages = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func nextImage(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex = -1
        repeat {
            newIndex = Int(newIndex + 1)
        } while newIndex <= lastNumber
        return newIndex
    }


    @IBAction func randomTrickButtonPressed(_ sender: UIButton) {
        let messages = ["Leading Blunt",
                        "Trailing Blunt",
                        "Trailing Critical",
                        "Leading Cuban",
                        "Trailing Cuban",
                        "Dub Japan",
                        "Dub Nose",
                        "Leading Hook",
                        "Leading Japan",
                        "Trailing Japan",
                        "Leading Mute",
                        "Trailing Mute",
                        "Trailing Nose",
                        "Leading Safety",
                        "Trailing Safety",
                        "Leading Same Nose",
                        "Trailing Same Nose",
                        "Screamin Japan",
                        "Leading Seatbelt Japan",
                        "Trailing Seatbelt Japan",
                        "Leading Stale",
                        "Trailing Stale",
                        "Strailing Stalepan",
                        "Leading Taipan",
                        "Trailing Taipan",
                        "Trailing Indy",
                        "Leading Toxic",
                        "Trailing Toxic",
                        "Truck Driver",
                        "Venom"]
        let messages2 = ["90",
                         "180",
                         "270",
                         "360",
                         "450",
                         "540",
                         "630",
                         "720",
                         "900",
                         "1080",
                         "1260",
                         "1440"]
        randomTrickLabel.text = "\(messages2.randomElement()!) \(messages.randomElement()!)"
    }
    

    
    @IBAction func stuckItButtonPressed(_ sender: UIButton) {
    trickTryImage.isHidden = false
        trickTryImage.image = UIImage(named: "boss")
    }
    
    @IBAction func bailedButtonPressed(_ sender: UIButton) {
        trickTryImage.isHidden = false
        imageNumber = nextImage(lastNumber: imageNumber, maxValue: numberOfImages)
        trickTryImage.image = UIImage(named: "image\(imageNumber)")
        
    }

}
