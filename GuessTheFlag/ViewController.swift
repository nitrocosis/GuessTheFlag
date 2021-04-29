//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Sarah Rebecca Estrellado on 4/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    //end after q10, change title
    //mistake. show correct answer V
    //no below 0

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correct = 0
    var numOfTaps = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        appendCountries()
        askQuestion()
        
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        numOfTaps += 1
        
       button1.setImage(UIImage(named: countries[0]), for: .normal)
       button2.setImage(UIImage(named: countries[1]), for: .normal)
       button3.setImage(UIImage(named: countries[2]), for: .normal)

        correct = Int.random(in: 0...2)
        
        if numOfTaps > 10 || score < 0 {
            title = "FINAL SCORE: \(score)"
            restart()
        } else {
            title = "\(countries[correct].uppercased()). Score: \(score)"
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correct {
           title = "Correct"
           score += 1
        } else {
            title = "Wrong. This is the flag of \(countries[sender.tag].capitalized)"
            score -= 1
        }
    
        let message = "Your score is now \(score)."
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default,
        handler: askQuestion))
        present(ac, animated: true)
    }
    
    func restart() {
        score = 0
        correct = 0
        numOfTaps = 0
    }
    
    func appendCountries() {
        
        countries += ["estonia", "france", "germany", "ireland",
        "italy", "monaco", "nigeria", "poland", "russia", "spain",
        "uk", "us"]
        
        }
        
    }





