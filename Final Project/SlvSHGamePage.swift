//
//  SlvSHGamePage.swift
//  Final Project
//
//  Created by Nick  Pullen on 12/13/18.
//  Copyright © 2018 Nick  Pullen. All rights reserved.
//

import UIKit

class SlvSHGamePage: UIViewController {

    @IBOutlet weak var playerOneScore: UIImageView!
    
    @IBOutlet weak var playerTwoScore: UIImageView!
    
    var imageNumber = -1
    var numberOfImages = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func playerOneBailed(_ sender: UIButton) {
        func moveNextPlayerOne(lastNumber: Int, maxValue: Int) -> Int {
            var newIndexPlayerOne = 0
            repeat {
                newIndexPlayerOne = Int(newIndexPlayerOne + 1)
            } while newIndexPlayerOne <= lastNumber
            return newIndexPlayerOne
        }
        playerOneScore.isHidden = false
        imageNumber = moveNextPlayerOne(lastNumber: imageNumber, maxValue: numberOfImages)
        playerOneScore.image = UIImage(named: "picture\(imageNumber)")
    }
    
    @IBAction func playerTwoBailed(_ sender: UIButton) {
        func moveNextPlayerTwo(lastNumber: Int, maxValue: Int) -> Int {
            var newIndexPlayerTwo = 0
            repeat {
                newIndexPlayerTwo = Int(newIndexPlayerTwo + 1)
            } while newIndexPlayerTwo <= lastNumber
            return newIndexPlayerTwo
        }
        playerTwoScore.isHidden = false
        imageNumber = moveNextPlayerTwo(lastNumber: imageNumber, maxValue: numberOfImages)
        playerTwoScore.image = UIImage(named: "picture\(imageNumber)")
    }
    
}
