//
//  ViewController.swift
//  Shamaz
//
//  Created by Am GHAZNAVI on 21/05/2019.
//  Copyright © 2019 Am GHAZNAVI. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var futureIndex: UIButton!
    @IBOutlet weak var pastIndex: UIButton!
    @IBOutlet weak var resetPlayer: UIButton!
    @IBOutlet weak var quoteIndex: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       enableDisableButtons(isEnabled: false)
    }

    @IBAction func futureButton(_ sender: Any) {
        enableDisableButtons(isEnabled: false)
        
        quoteIndex.text = pastQuotes.randomElement()!
    }
    
    @IBAction func pastButton(_ sender: Any) {
        enableDisableButtons(isEnabled: false)
        
        quoteIndex.text = futureQuotes.randomElement()!
    }
    
    @IBAction func resetButton(_ sender: Any) {
       enableDisableButtons(isEnabled: true)
        
        let nextPlayer = Int.random(in: 1...10)
        quoteIndex.text = ("Hey it's your turn, Player No. \(nextPlayer) ")
        
    }
// Function to disable the buttons when not needed.
    
    func enableDisableButtons (isEnabled: Bool) {
        futureIndex.isEnabled = isEnabled
        pastIndex.isEnabled = isEnabled
        resetPlayer.isEnabled = !isEnabled
    }
}
