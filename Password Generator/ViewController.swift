//
//  ViewController.swift
//  Password Generator
//
//  Created by Hunter Doradea on 8/5/21.
//
//GOAL : generate a new 8 character password when the button is pressed

import UIKit

class ViewController: UIViewController {
    
    //IB Outlet for label - this will show the user the password
    @IBOutlet weak var passwordLabel: UILabel!
     
    // IB Action - Button: will run when the user presses it, generate new password on each press
    @IBAction func generatePasswordButton(_ sender: UIButton) {
        
        //different list of arrays for password
        let alphabetLower = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
        
        let alphabetUpper = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        
        let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        let symbols = ["!", "?", "$", "&"]
        
        //randomly select an item from the arrays
        var a = alphabetUpper.randomElement()
        var b = alphabetLower.randomElement()
        var c = alphabetLower.randomElement()
        var d = alphabetLower.randomElement()
        var e = alphabetLower.randomElement()
        var f = numbers.randomElement()
        var g = numbers.randomElement()
        var h = symbols.randomElement()
        
        //place all the randomly selected elements into an array and force unwrwap it:
        var passwordArray = [a!, b!, c!, d!, e!, f!, g!, h!]

        //shuffle the array
        var shuffledPasswordArray = passwordArray.shuffled()
        
        //convert the swfit array into a string
        var password = shuffledPasswordArray.joined()
             
        //show the user the generated password
        passwordLabel.text = password

    }
    


}

