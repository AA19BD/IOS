//
//  ViewController.swift
//  Apple Pie
//
//  Created by Абылай Айтбанов on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var treeImageView: UIImageView!
    
    var listOfWords=["applepie","swift","midterm","ios","uikit"]
    let incorrectMovesAllowed=7
    var totalWins=0{
        didSet{
            newRound()//call every time when variable changes
        }
    }
    var totalLosses=0{
        didSet{
            newRound()
        }
    }
    var currentGame:Game!

    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled=false
        let letterString=sender.titleLabel!.text!
        let letter=Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        
        updateGameState()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newRound()
    }
    
    func newRound(){
        if !listOfWords.isEmpty{
            let newWord=listOfWords.removeFirst()
            currentGame=Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }else{
            enableLetterButtons(false)
        }
        
    }
    
    func enableLetterButtons(_ enable:Bool){
        for button in letterButtons {
            button.isEnabled=enable
        }
    }
    
    
    func updateUI(){
        
        correctWordLabel.text=currentGame.formattedWord
        scoreLabel.text="Wins: \(totalWins) Losses: \(totalLosses)"
        treeImageView.image=UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
    }
    
    func updateGameState(){
        if currentGame.incorrectMovesRemaining==0{
            totalLosses+=1
        }else if currentGame.word==currentGame.formattedWord{
            totalWins+=1
        }else{
            updateUI()
        }
    }
    
}

