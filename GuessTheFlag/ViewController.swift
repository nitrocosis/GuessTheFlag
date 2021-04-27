//
//  ViewController.swift
//  GuessTheFlag
//
//  Created by Sarah Rebecca Estrellado on 4/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        appendCountries()
        askQuestion()
        print(countries)
        
    }
    
    func askQuestion() {
       button1.setImage(UIImage(named: countries[0]), for: .normal)
       button2.setImage(UIImage(named: countries[1]), for: .normal)
       button3.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    func appendCountries() {
        
        countries += ["estonia", "france", "germany", "ireland",
        "italy", "monaco", "nigeria", "poland", "russia", "spain",
        "uk", "us"]
        
        }
        
    }




